.class public Lcom/miui/home/recents/NavStubView;
.super Landroid/widget/FrameLayout;
.source "NavStubView.java"

# interfaces
.implements Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;,
        Lcom/miui/home/recents/NavStubView$SmallWindowCropHandler;,
        Lcom/miui/home/recents/NavStubView$H;,
        Lcom/miui/home/recents/NavStubView$_lancet;
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

.field public static final IS_E10:Z

.field public static final TAG:Ljava/lang/String; = "NavStubView"


# instance fields
.field public final RADIUS_SIZE:I

.field private antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

.field private enableUpdateStatusBarClockRunnable:Ljava/lang/Runnable;

.field finishBreakOpenAnimRunnable:Ljava/lang/Runnable;

.field private mAppHoldTaskAnimCancel:Z

.field private mAppHoldTaskAnimRatioValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private mAppHoldTaskAnimUpdateRunnable:Ljava/lang/Runnable;

.field private mAppHoldTaskAnimWidthValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private mAppHoldTaskAnimXValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private mAppHoldTaskAnimYValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private mCancelAppToAppAnim:Z

.field private mCancelRecentsAnimationRunnable:Ljava/lang/Runnable;

.field private mCancelStartFirstTaskAnim:Z

.field private final mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

.field private mCloseScreenshotIntent:Landroid/content/Intent;

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

.field private mDisableTouch:Z

.field private mDisableUpdateStatusBarClock:Z

.field private mDownEvent:Landroid/view/MotionEvent;

.field private mDownNo:I

.field private mDownTime:J

.field private mDownX:F

.field private mDownY:F

.field private mEventReceiver:Ljava8/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Predicate<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mFollowTailDistance:F

.field private mFollowTailX:F

.field private mFollowTailXDelta:F

.field private mFollowTailY:F

.field private mFollowTailYDelta:F

.field private mFrameHandler:Landroid/os/Handler;

.field mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

.field private mFullScreenModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mGestureLineProgress:F

.field private mHandler:Lcom/miui/home/recents/NavStubView$H;

.field private mHideGestureLine:Z

.field private mHomeFadeInAnim:Landroid/animation/ValueAnimator;

.field private mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

.field private mHomeIntent:Landroid/content/Intent;

.field mHomeModeTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHorizontalActiveArea:[F

.field private mHorizontalGap:F

.field private mIconTranslationZ:F

.field private mInitX:F

.field private mInitY:F

.field private mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

.field private mIsAnimatingToLauncher:Z

.field mIsAppHold:Z

.field private mIsDarkMode:Z

.field private mIsFullScreenMode:Z

.field private mIsGestureStarted:Z

.field private mIsInFsMode:Z

.field private mIsQuickSwitching:Z

.field private mIsSafeArea:Z

.field private mIsShowNavBar:Z

.field private mIsShowRecents:Z

.field private mIsShowStatusBar:Z

.field private mIsTaskStackLayoutStyleVertical:Z

.field private mIsVertical:Z

.field private mKeepHidden:Z

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mLastDownNo:I

.field private mLastTouchTime:J

.field mLastVelocity:F

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLocation:[I

.field private mNeedBreakOpenAnim:Z

.field private mNeedRender:Z

.field private mNoIconRadius:I

.field mOnHandHapticFeedRan:Z

.field private mOnHandHapticFeedRunnable:Ljava/lang/Runnable;

.field private mOnHandValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

.field private mOverviewBgAlpha:F

.field private mPaint:Landroid/graphics/Paint;

.field private mPendingResetStatus:Z

.field private mPer:F

.field private mPivotLocX:I

.field private mPivotLocY:I

.field private mQueryTaskSupportSmallWindowState:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

.field private mQuickSwitchTaskId:I

.field private mQuickSwitchTaskIndex:I

.field public mReLoadTaskFinished:Z

.field private mRecentActivityStarted:Z

.field private mRecentVisible:Z

.field private mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

.field private final mRecentsModeHomeIntent:Landroid/content/Intent;

.field mRecentsViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mReloadStackViewFinishCallback:Ljava/lang/Runnable;

.field mRemoveSmallViewRunnable:Ljava/lang/Runnable;

.field private mResponseOffset:F

.field private mRunningTaskComponentName:Landroid/content/ComponentName;

.field private mRunningTaskId:I

.field private mRunningTaskIndex:I

.field private mRunningTaskUserId:I

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSmallWindowCropHandler:Landroid/os/Handler;

.field private mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

.field private mStartAppModeGesture:Z

.field private mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field mStartNewTaskRunnable:Ljava/lang/Runnable;

.field private mStartRecentsAnimationRunnable:Ljava/lang/Runnable;

.field mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

.field private mStateMode:I

.field mSupportHorizontalGesture:Z

.field private mSystemUiFlags:I

.field private mTailCatcherTask:Ljava/lang/Runnable;

.field private mTargetTaskRectF:Landroid/graphics/RectF;

.field private mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

.field mTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mTaskViewInitRect:Landroid/graphics/Rect;

.field private mTaskViewRadius:F

.field private mTaskViewWidth:F

.field private mTaskViewX:F

.field private mTouchSlop:I

.field private final mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field mUpdateGestureLineProgressRunnable:Ljava/lang/Runnable;

.field private mUpdateViewLayoutRunnable:Ljava/lang/Runnable;

.field private mVelocityPxPerMs:Landroid/graphics/PointF;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowMode:I

.field private onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "beryllium"

    .line 125
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/miui/home/recents/NavStubView;->IS_E10:Z

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/recents/NavStubView;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    .line 207
    sget-object v0, Lcom/miui/home/recents/NavStubView;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    const-string v1, "perseus"

    const/high16 v2, 0x40900000    # 4.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lcom/miui/home/recents/NavStubView;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    const-string v1, "cepheus"

    const v2, 0x40666666    # 3.6f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/miui/home/recents/NavStubView;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    const-string v1, "dipper"

    const v3, 0x40cccccd    # 6.4f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/miui/home/recents/NavStubView;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    const-string v1, "grus"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 767
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFrameHandler:Landroid/os/Handler;

    .line 195
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLastConfiguration:Landroid/content/res/Configuration;

    const/4 v0, -0x1

    .line 226
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    .line 232
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/home/recents/util/SpringAnimationUtils;->mOnHandValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mOnHandValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mOnHandHapticFeedRan:Z

    .line 234
    new-instance v1, Lcom/miui/home/recents/NavStubView$1;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$1;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mOnHandHapticFeedRunnable:Ljava/lang/Runnable;

    .line 244
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/home/recents/util/SpringAnimationUtils;->mAppHoldTaskAnimXValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimXValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 245
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/home/recents/util/SpringAnimationUtils;->mAppHoldTaskAnimYValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimYValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 246
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/home/recents/util/SpringAnimationUtils;->mAppHoldTaskAnimWidthValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimWidthValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    .line 247
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/miui/home/recents/util/SpringAnimationUtils;->mAppHoldTaskAnimRatioValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimRatioValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v1, 0x0

    .line 248
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimCancel:Z

    .line 249
    new-instance v2, Lcom/miui/home/recents/NavStubView$2;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$2;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimUpdateRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x2

    .line 285
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mLocation:[I

    .line 292
    new-array v2, v2, [F

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalActiveArea:[F

    .line 299
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowStatusBar:Z

    .line 310
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mStartAppModeGesture:Z

    .line 311
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mSystemUiFlags:I

    .line 313
    new-instance v2, Lcom/miui/home/recents/NavStubView$3;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$3;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mTailCatcherTask:Ljava/lang/Runnable;

    .line 965
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mLastDownNo:I

    .line 967
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mDownNo:I

    .line 1483
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mSupportHorizontalGesture:Z

    .line 1492
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    .line 1495
    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    const/high16 v2, 0x420c0000    # 35.0f

    .line 1513
    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const v2, 0x3d75c28f    # 0.06f

    .line 1514
    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mResponseOffset:F

    const/16 v2, 0x14

    .line 1516
    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mNoIconRadius:I

    .line 1519
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    .line 1531
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mRecentActivityStarted:Z

    .line 1533
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 1710
    new-instance v3, Lcom/miui/home/recents/NavStubView$11;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/NavStubView$11;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mUpdateGestureLineProgressRunnable:Ljava/lang/Runnable;

    .line 1835
    new-instance v3, Lcom/miui/home/recents/-$$Lambda$NavStubView$oj7DacVTwJ7u3Ipk2n92i_DX_sI;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$oj7DacVTwJ7u3Ipk2n92i_DX_sI;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mStartRecentsAnimationRunnable:Ljava/lang/Runnable;

    .line 1841
    sget-object v3, Lcom/miui/home/recents/-$$Lambda$NavStubView$L3z88QTFhaKuddbgvDnPQT7t_xs;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$NavStubView$L3z88QTFhaKuddbgvDnPQT7t_xs;

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mCancelRecentsAnimationRunnable:Ljava/lang/Runnable;

    .line 1892
    new-instance v3, Lcom/miui/home/recents/NavStubView$12;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/NavStubView$12;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mReloadStackViewFinishCallback:Ljava/lang/Runnable;

    .line 1923
    new-instance v3, Lcom/miui/home/recents/NavStubView$13;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/NavStubView$13;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1940
    new-instance v3, Lcom/miui/home/recents/NavStubView$14;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/NavStubView$14;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mRecentsViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1980
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    .line 2136
    new-instance v3, Lcom/miui/home/recents/NavStubView$17;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/NavStubView$17;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->finishBreakOpenAnimRunnable:Ljava/lang/Runnable;

    .line 2809
    new-instance v3, Lcom/miui/home/recents/NavStubView$22;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/NavStubView$22;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mStartNewTaskRunnable:Ljava/lang/Runnable;

    .line 2843
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mDisableUpdateStatusBarClock:Z

    .line 2855
    new-instance v3, Lcom/miui/home/recents/-$$Lambda$NavStubView$2HaJMQNZQEf-W5VQjMx3uG9q4ms;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$2HaJMQNZQEf-W5VQjMx3uG9q4ms;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->enableUpdateStatusBarClockRunnable:Ljava/lang/Runnable;

    .line 3012
    new-instance v3, Lcom/miui/home/recents/NavStubView$24;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/NavStubView$24;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mFullScreenModeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 3067
    new-instance v3, Lcom/miui/home/recents/-$$Lambda$NavStubView$wKRujsdwgOxtKN7ef2UwrVpVyls;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$wKRujsdwgOxtKN7ef2UwrVpVyls;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mHomeModeTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 3487
    new-instance v3, Lcom/miui/home/recents/NavStubView$27;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/NavStubView$27;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mUpdateViewLayoutRunnable:Ljava/lang/Runnable;

    .line 3719
    sget-object v3, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;->IDLE:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mQueryTaskSupportSmallWindowState:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    .line 3779
    new-instance v3, Lcom/miui/home/recents/NavStubView$31;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/NavStubView$31;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v3, p0, Lcom/miui/home/recents/NavStubView;->mRemoveSmallViewRunnable:Ljava/lang/Runnable;

    .line 768
    iput v2, p0, Lcom/miui/home/recents/NavStubView;->RADIUS_SIZE:I

    const v2, 0x10001

    .line 769
    invoke-direct {p0, v2}, Lcom/miui/home/recents/NavStubView;->updateStateMode(I)V

    .line 770
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    .line 772
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 773
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 774
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    .line 775
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    .line 776
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mPaint:Landroid/graphics/Paint;

    .line 777
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 779
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    .line 780
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 781
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 782
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 783
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    .line 785
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 786
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 787
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    .line 790
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRecentsModeHomeIntent:Landroid/content/Intent;

    .line 791
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRecentsModeHomeIntent:Landroid/content/Intent;

    const-string v3, "skip_reset_gesture_view_state"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 793
    new-instance v2, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 794
    new-instance v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 796
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCloseScreenshotIntent:Landroid/content/Intent;

    .line 797
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCloseScreenshotIntent:Landroid/content/Intent;

    const-string v3, "reason"

    const-string v4, "fs_gesture"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 799
    new-instance v2, Lcom/miui/home/recents/NavStubView$H;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/home/recents/NavStubView$H;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/NavStubView$1;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    .line 800
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mTouchSlop:I

    const/16 v2, 0x8

    .line 801
    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mTouchSlop:I

    .line 803
    new-instance v2, Lcom/miui/home/recents/AntiMistakeTouchView;

    invoke-direct {v2, p1}, Lcom/miui/home/recents/AntiMistakeTouchView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    .line 804
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    invoke-virtual {v2}, Lcom/miui/home/recents/AntiMistakeTouchView;->getFrameLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/miui/home/recents/NavStubView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 806
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mRecentVisible:Z

    .line 807
    new-instance v2, Lcom/miui/home/recents/GestureStateMachine;

    const-string v4, "GestureStateMachine"

    invoke-direct {v2, v4, p0}, Lcom/miui/home/recents/GestureStateMachine;-><init>(Ljava/lang/String;Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    .line 808
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/recents/util/Utilities;->getTaskViewCornerRadius(Landroid/content/Context;)F

    move-result v2

    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewRadius:F

    .line 810
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v2

    .line 811
    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalActiveArea:[F

    int-to-float v2, v2

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v5, v2

    aput v5, v4, v1

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v2, v1

    .line 812
    aput v2, v4, v0

    .line 814
    new-instance v0, Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/FsGestureAssistHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

    .line 816
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00a9

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    .line 817
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->isInDarkMode(Landroid/content/res/Configuration;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsDarkMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/NavStubView;)Landroidx/dynamicanimation/animation/FloatValueHolder;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mOnHandValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    return-object p0
.end method

.method static synthetic access$001(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$002(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimCancel:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/home/recents/NavStubView;)Landroidx/dynamicanimation/animation/FloatValueHolder;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimWidthValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/miui/home/recents/NavStubView;)Landroidx/dynamicanimation/animation/FloatValueHolder;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimRatioValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    return p0
.end method

.method static synthetic access$1300(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    return p0
.end method

.method static synthetic access$1400(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskAlpha:F

    return p0
.end method

.method static synthetic access$1500(Lcom/miui/home/recents/NavStubView;FFFFFFF)Landroid/graphics/RectF;
    .locals 0

    .line 121
    invoke-direct/range {p0 .. p7}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(FFFFFFF)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateOverviewBackgroundAlpha()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    return p0
.end method

.method static synthetic access$1800(Lcom/miui/home/recents/NavStubView;FI)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/NavStubView;->updateSysUiFlags(FI)V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailX:F

    return p0
.end method

.method static synthetic access$1902(Lcom/miui/home/recents/NavStubView;F)F
    .locals 0

    .line 121
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailX:F

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mPivotLocX:I

    return p0
.end method

.method static synthetic access$2100(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailY:F

    return p0
.end method

.method static synthetic access$2102(Lcom/miui/home/recents/NavStubView;F)F
    .locals 0

    .line 121
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailY:F

    return p1
.end method

.method static synthetic access$2200(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mPivotLocY:I

    return p0
.end method

.method static synthetic access$2300(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailXDelta:F

    return p0
.end method

.method static synthetic access$2302(Lcom/miui/home/recents/NavStubView;F)F
    .locals 0

    .line 121
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailXDelta:F

    return p1
.end method

.method static synthetic access$2400(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailYDelta:F

    return p0
.end method

.method static synthetic access$2402(Lcom/miui/home/recents/NavStubView;F)F
    .locals 0

    .line 121
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailYDelta:F

    return p1
.end method

.method static synthetic access$2502(Lcom/miui/home/recents/NavStubView;F)F
    .locals 0

    .line 121
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailDistance:F

    return p1
.end method

.method static synthetic access$2600(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    return p0
.end method

.method static synthetic access$2700(Lcom/miui/home/recents/NavStubView;)Landroid/os/Handler;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mFrameHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mCurShortcutMenuLayerScale:F

    return p0
.end method

.method static synthetic access$2900(Lcom/miui/home/recents/NavStubView;FF)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewRadius:F

    return p0
.end method

.method static synthetic access$3300(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    return p0
.end method

.method static synthetic access$3400(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowNavBar:Z

    return p0
.end method

.method static synthetic access$3500(Lcom/miui/home/recents/NavStubView;)[F
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalActiveArea:[F

    return-object p0
.end method

.method static synthetic access$3600(Lcom/miui/home/recents/NavStubView;)Landroid/view/MotionEvent;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/miui/home/recents/NavStubView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    return p0
.end method

.method static synthetic access$3800(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    return p0
.end method

.method static synthetic access$3900(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/NavStubView$H;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/RecentsAnimationListenerImpl;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->disableTouch(Z)V

    return-void
.end method

.method static synthetic access$4102(Lcom/miui/home/recents/NavStubView;Z)Z
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetStatus:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    return p0
.end method

.method static synthetic access$4300(Lcom/miui/home/recents/NavStubView;I)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->injectMotionEvent(I)V

    return-void
.end method

.method static synthetic access$4400(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    return p0
.end method

.method static synthetic access$4500(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    return p0
.end method

.method static synthetic access$4600(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    return p0
.end method

.method static synthetic access$4602(Lcom/miui/home/recents/NavStubView;I)I
    .locals 0

    .line 121
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    return p1
.end method

.method static synthetic access$4700(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    return p0
.end method

.method static synthetic access$4800(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result p0

    return p0
.end method

.method static synthetic access$4900(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    return p0
.end method

.method static synthetic access$5000(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;IFZFFZLjava/lang/Runnable;Z)V
    .locals 0

    .line 121
    invoke-direct/range {p0 .. p9}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZFFZLjava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/miui/home/recents/NavStubView;Z)Z
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mGestureLineProgress:F

    return p0
.end method

.method static synthetic access$5200(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5300(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    return p0
.end method

.method static synthetic access$5400(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateTaskViewToInitPosition()V

    return-void
.end method

.method static synthetic access$5500(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->cancelSyncTransactionApplier()V

    return-void
.end method

.method static synthetic access$5600(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;FFF)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/NavStubView;->onBreakOpenRectFAnimUpdate(Landroid/graphics/RectF;FFF)V

    return-void
.end method

.method static synthetic access$5700(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->setSyncTransactionApplier()V

    return-void
.end method

.method static synthetic access$5802(Lcom/miui/home/recents/NavStubView;Z)Z
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToLauncher:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mIconTranslationZ:F

    return p0
.end method

.method static synthetic access$5902(Lcom/miui/home/recents/NavStubView;F)F
    .locals 0

    .line 121
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mIconTranslationZ:F

    return p1
.end method

.method static synthetic access$600(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    return-object p0
.end method

.method static synthetic access$6000(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->switchToScreenshot()V

    return-void
.end method

.method static synthetic access$6100(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->enterRecents()V

    return-void
.end method

.method static synthetic access$6200(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->onAppModeGestureEnd()V

    return-void
.end method

.method static synthetic access$6302(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/util/RectFSpringAnim;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    return-object p1
.end method

.method static synthetic access$6402(Lcom/miui/home/recents/NavStubView;Z)Z
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mCancelAppToAppAnim:Z

    return p0
.end method

.method static synthetic access$6502(Lcom/miui/home/recents/NavStubView;Z)Z
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mCancelAppToAppAnim:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resumeLastTask()V

    return-void
.end method

.method static synthetic access$6700(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherView()V

    return-void
.end method

.method static synthetic access$6800(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->disableUpdateStatusBarClock()V

    return-void
.end method

.method static synthetic access$6900(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 121
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    return p0
.end method

.method static synthetic access$700(Lcom/miui/home/recents/NavStubView;)Landroid/graphics/RectF;
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getCurRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$7000(Lcom/miui/home/recents/NavStubView;I)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->startNewTask(I)V

    return-void
.end method

.method static synthetic access$7100(Lcom/miui/home/recents/NavStubView;ZZZLjava/lang/String;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 121
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mCancelStartFirstTaskAnim:Z

    return p0
.end method

.method static synthetic access$7202(Lcom/miui/home/recents/NavStubView;Z)Z
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mCancelStartFirstTaskAnim:Z

    return p1
.end method

.method static synthetic access$7302(Lcom/miui/home/recents/NavStubView;Z)Z
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsFullScreenMode:Z

    return p1
.end method

.method static synthetic access$7400(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/AntiMistakeTouchView;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    return-object p0
.end method

.method static synthetic access$7500(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isMistakeTouch()Z

    move-result p0

    return p0
.end method

.method static synthetic access$7600(Lcom/miui/home/recents/NavStubView;I)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateViewLayout(I)V

    return-void
.end method

.method static synthetic access$7700(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetSmallWindowCrop()V

    return-void
.end method

.method static synthetic access$7800(Lcom/miui/home/recents/NavStubView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->initAndUpdateSmallWindowCrop(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->exitSmallWindowCrop()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/recents/NavStubView;)Landroidx/dynamicanimation/animation/FloatValueHolder;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimXValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    return-object p0
.end method

.method static synthetic access$8000(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->startSmallWindow()V

    return-void
.end method

.method static synthetic access$8100(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateSmallWindowCropConfiguration()V

    return-void
.end method

.method static synthetic access$8200(Lcom/miui/home/recents/NavStubView;)Ljava/lang/Runnable;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mOnHandHapticFeedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$8300(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/RecentsSmallWindowCrop;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    return-object p0
.end method

.method static synthetic access$8400(Lcom/miui/home/recents/NavStubView;)Landroid/view/WindowManager;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/home/recents/NavStubView;)Landroidx/dynamicanimation/animation/FloatValueHolder;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimYValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    return-object p0
.end method

.method private actionCommonMoveResolution(Landroid/view/MotionEvent;)V
    .locals 1

    .line 3292
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    .line 3294
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMode:I

    const v0, 0x10001

    if-ne p1, v0, :cond_0

    const p1, 0x10002

    .line 3295
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateStateMode(I)V

    .line 3296
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "current state mode: StateMode.STATE_ON_DRAG"

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mFrameHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTailCatcherTask:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private actionUpResolution()V
    .locals 2

    .line 3350
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFrameHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3352
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isFastPullUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3353
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3354
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isFastPullDown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3355
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPullLeft()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3356
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3357
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPullRight()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3358
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3360
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3363
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPullLeft()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3364
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3365
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPullRight()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3366
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3368
    :cond_5
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    :goto_0
    return-void
.end method

.method private addHomeModeLayoutListener()V
    .locals 2

    .line 3073
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3074
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mHomeModeTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 3075
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private adjustAppHoldAnimStartToCur()V
    .locals 2

    .line 2220
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimXValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 2221
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimYValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 2222
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimWidthValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 2223
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimRatioValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRatio:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    return-void
.end method

.method private appTouchResolutionForVersionTwo(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1732
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 1734
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 1736
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resumeLastTask()V

    .line 1739
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/BaseRecentsImpl;->setIsPerformGesture(Z)V

    .line 1741
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->initValue(Landroid/view/MotionEvent;)V

    .line 1743
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->setSyncTransactionApplier()V

    .line 1744
    new-instance p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-direct {p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    .line 1745
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {p1, p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->addListener(Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;)V

    .line 1747
    iput-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mStartAppModeGesture:Z

    .line 1748
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getRunningTaskInfo()V

    .line 1749
    iput-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mRecentActivityStarted:Z

    .line 1751
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_1

    .line 1752
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherStateManager;->cancelAnimation()V

    .line 1755
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->startRecentsAnimation()V

    .line 1757
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 1758
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/miui/home/recents/RecentsModel;->setIgnoreTaskSnapshotChanged(Z)V

    .line 1760
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1761
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->breakOpenAnimIfNeeded()V

    .line 1763
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->onLauncherStart()V

    .line 1765
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    .line 1766
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1767
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskId(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    .line 1770
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSmallWindowCropHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1771
    invoke-direct {p0, v2, v1}, Lcom/miui/home/recents/NavStubView;->sendSmallWindowMessage(ILjava/lang/Object;)V

    .line 1772
    sget-object p1, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;->IDLE:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mQueryTaskSupportSmallWindowState:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    goto :goto_1

    .line 1773
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v0, v3, :cond_4

    .line 1774
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateMotionEventVelocity(Landroid/view/MotionEvent;)V

    .line 1775
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 1776
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    .line 1777
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    .line 1778
    invoke-direct {p0, v3, p1}, Lcom/miui/home/recents/NavStubView;->sendSmallWindowMessage(ILjava/lang/Object;)V

    .line 1779
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    invoke-virtual {p1, v4}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1780
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 1781
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 1782
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/RecentsModel;->setIgnoreTaskSnapshotChanged(Z)V

    .line 1783
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->cancelBreakOpenRectFAnim()V

    .line 1784
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->enableInputProxy()V

    .line 1785
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->isStartSmallWindow(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x4

    .line 1786
    invoke-direct {p0, p1, v1}, Lcom/miui/home/recents/NavStubView;->sendSmallWindowMessage(ILjava/lang/Object;)V

    .line 1787
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty()V

    const-string p1, "startSmallWindow"

    .line 1788
    invoke-direct {p0, v2, v2, v2, p1}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    goto :goto_0

    .line 1789
    :cond_6
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-boolean p1, p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    if-nez p1, :cond_7

    .line 1790
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->cancelRecentsAnimation()V

    goto :goto_0

    .line 1792
    :cond_7
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->actionUpResolution()V

    .line 1794
    :goto_0
    invoke-direct {p0, v4, v1}, Lcom/miui/home/recents/NavStubView;->sendSmallWindowMessage(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 1795
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    :cond_8
    :goto_1
    return-void
.end method

.method private assistantTouchResolution(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1450
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/FsGestureAssistHelper;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 1451
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1454
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->initValue(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    :pswitch_1
    const-string p1, "assistantTouchResolution"

    const/4 v0, 0x0

    .line 1458
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private breakOpenAnimIfNeeded()V
    .locals 1

    .line 1876
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->needBreakOpenAnim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    .line 1877
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    if-eqz v0, :cond_0

    .line 1878
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    .line 1879
    invoke-virtual {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->breakOpenAnim()V

    :cond_0
    return-void
.end method

.method private calculateDamping()F
    .locals 2

    .line 474
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    add-int/lit16 v1, v1, -0xfa

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const v0, 0x3f7d70a4    # 0.99f

    return v0

    :cond_0
    const v0, 0x3f5c28f6    # 0.86f

    return v0
.end method

.method private calculateResponse()F
    .locals 2

    .line 482
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

.method private calculateTaskAlpha()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2087
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskAlpha:F

    .line 2088
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskAlpha:F

    return v0
.end method

.method private calculateTaskFullscreenProgress()F
    .locals 3

    .line 2082
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/recents/NavStubView;->getPercentsValue(FFF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    .line 2083
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    return v0
.end method

.method private calculateTaskInitRectF()Landroid/graphics/Rect;
    .locals 4

    .line 2038
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    .line 2039
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private calculateTaskPosition()V
    .locals 7

    .line 2053
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    if-nez v0, :cond_1

    .line 2055
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    .line 2054
    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->create(ILandroid/content/Context;Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;)Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object v0

    .line 2056
    invoke-virtual {v0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getStyleValue()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsTaskStackLayoutStyleVertical:Z

    .line 2057
    invoke-virtual {v0}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getTaskStackLayoutAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    .line 2059
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mDownY:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculatePer(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    .line 2060
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskWidthNew(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    .line 2061
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    .line 2062
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
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

    :goto_1
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    iget-boolean v4, p0, Lcom/miui/home/recents/NavStubView;->mIsVertical:Z

    .line 2061
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskRatio(FFFZ)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRatio:F

    .line 2064
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    .line 2065
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mDownY:F

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    .line 2066
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    iget v6, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    .line 2065
    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskY(FFFFF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    .line 2067
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mDownX:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskX(FFFF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    .line 2068
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskFullscreenProgress()F

    .line 2069
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskRadius(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    .line 2070
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskAlpha()F

    return-void
.end method

.method private calculateTaskWidthHome()F
    .locals 3

    .line 2043
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewWidth:F

    .line 2044
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewWidth:F

    return v0
.end method

.method private calculateTaskXHome()F
    .locals 4

    .line 2048
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

    .line 2049
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewX:F

    return v0
.end method

.method private cancelBreakOpenRectFAnim()V
    .locals 1

    .line 2147
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    if-eqz v0, :cond_0

    .line 2148
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->finishBreakOpenAnimRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 2149
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2150
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 2152
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    return-void
.end method

.method private cancelRecentsAnimation()V
    .locals 2

    .line 1850
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStateMachine;->removeCallbacksAndMessage()V

    const-string v0, "cancelRecentsAnimation"

    const/4 v1, 0x0

    .line 1851
    invoke-direct {p0, v1, v1, v1, v0}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    .line 1852
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mStartNewTaskRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/LauncherUtils;->hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1853
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mStartRecentsAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1855
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mCancelRecentsAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method private cancelReloadStackView()V
    .locals 1

    .line 1918
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1919
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->cancelReloadStackView()V

    :cond_0
    return-void
.end method

.method private cancelSyncTransactionApplier()V
    .locals 2

    .line 1860
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    return-void
.end method

.method private changeAlphaScaleForFsGesture(FF)V
    .locals 8

    .line 828
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeAlphaScaleForFsGesture: alpha="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   scale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    .line 831
    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/launcher/Launcher;->changeShortcutMenuLayerAlphaScale(FFIIZ)V

    :cond_0
    return-void
.end method

.method private clearMessages()V
    .locals 2

    .line 1302
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView$H;->removeMessages(I)V

    .line 1303
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView$H;->removeMessages(I)V

    .line 1304
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView$H;->removeMessages(I)V

    return-void
.end method

.method private disableTouch(Z)V
    .locals 3

    .line 1065
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "distouch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mDisableTouch:Z

    .line 1069
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1071
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    .line 1073
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 1076
    :cond_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1079
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private disableUpdateStatusBarClock()V
    .locals 3

    .line 2850
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->enableUpdateStatusBarClockRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 2851
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mDisableUpdateStatusBarClock:Z

    .line 2852
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->enableUpdateStatusBarClockRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x50

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/recents/NavStubView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private endAppToRecentsAnimIfNeeded()V
    .locals 1

    .line 2525
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2526
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->end()V

    :cond_0
    return-void
.end method

.method private enterRecents()V
    .locals 2

    .line 2830
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "enterRecents"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2831
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private exitFreeFormWindowIfNeeded()V
    .locals 0

    return-void
.end method

.method private exitSmallWindowCrop()V
    .locals 2

    .line 3771
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "NavStubView::exitSmallWindowCrop"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 3772
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isSmallWindowInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3776
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRemoveSmallViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->exitSmallWindowCrop(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finalization(ZZZLjava/lang/String;)V
    .locals 2

    .line 3498
    sget-object p3, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===>>>finalization executed from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    iget-object p3, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 p4, 0x0

    if-eqz p3, :cond_0

    .line 3501
    invoke-virtual {p3}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentTransitionRequest(I)V

    .line 3504
    :cond_0
    iput-boolean p4, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    .line 3505
    iput-boolean p4, p0, Lcom/miui/home/recents/NavStubView;->mRecentActivityStarted:Z

    .line 3506
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->cancelReloadStackView()V

    .line 3507
    iget-object p3, p0, Lcom/miui/home/recents/NavStubView;->mPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3508
    iget-object p3, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string v0, "ignore_bring_to_front"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 3509
    iget-object p3, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string v0, "filter_flag"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const p3, 0x10001

    .line 3510
    invoke-direct {p0, p3}, Lcom/miui/home/recents/NavStubView;->updateStateMode(I)V

    .line 3512
    iget-object p3, p0, Lcom/miui/home/recents/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 3513
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 3514
    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 3516
    :cond_1
    iget-object p3, p0, Lcom/miui/home/recents/NavStubView;->mUpdateViewLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p3}, Lcom/miui/home/recents/NavStubView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3517
    iget-object p3, p0, Lcom/miui/home/recents/NavStubView;->mUpdateViewLayoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p3}, Lcom/miui/home/recents/NavStubView;->post(Ljava/lang/Runnable;)Z

    .line 3519
    iget-object p3, p0, Lcom/miui/home/recents/NavStubView;->mFrameHandler:Landroid/os/Handler;

    if-eqz p3, :cond_2

    .line 3520
    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    .line 3525
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 3526
    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3527
    new-instance p2, Lcom/miui/home/recents/NavStubView$28;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/NavStubView$28;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3535
    new-instance p2, Lcom/miui/home/recents/NavStubView$29;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/NavStubView$29;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p2, 0xc8

    .line 3540
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 3541
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 3543
    invoke-direct {p0, p1, p1}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    .line 3546
    :cond_4
    :goto_0
    iput-boolean p4, p0, Lcom/miui/home/recents/NavStubView;->mIsInFsMode:Z

    return-void

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private findClosingShortcutIcon(Landroid/graphics/Rect;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 4

    .line 2246
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->needFindClosingShortcutIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2247
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->getClosingApp(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/util/ComponentAndUserId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2249
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v3, v0, Lcom/miui/home/launcher/util/ComponentAndUserId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    iget v0, v0, Lcom/miui/home/launcher/util/ComponentAndUserId;->userId:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/miui/home/launcher/Launcher;->getShowingItem(Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    .line 2250
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getClosingShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 2255
    invoke-static {}, Lcom/miui/home/launcher/ItemIcon;->getClosingAppDefaultDisappearRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2257
    :cond_1
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageViewOriginalLocation()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    return-object v1
.end method

.method private finishHideTaskView()V
    .locals 3

    .line 2319
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2320
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    .line 2321
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2322
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    :cond_0
    return-void
.end method

.method private getClosingApp(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/util/ComponentAndUserId;
    .locals 2

    .line 2228
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2229
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    .line 2230
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2231
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2232
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

    .line 2235
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

    .line 2156
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    add-float v4, v1, v3

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRatio:F

    mul-float/2addr v3, v5

    add-float/2addr v3, v2

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private getCurrentTaskViewRadius(Lcom/miui/home/recents/views/TaskView;)F
    .locals 1

    if-eqz p1, :cond_0

    .line 487
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    .line 488
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0

    .line 490
    :cond_0
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    return p1
.end method

.method private getCurrentTaskViewRatio()F
    .locals 3

    .line 494
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

    .line 495
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 496
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

.method private getPercentsValue(FFF)F
    .locals 1

    const/4 v0, 0x0

    .line 2092
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

    .line 516
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

    .line 512
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

    .line 1725
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    .line 1726
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    .line 1727
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRunningTaskInfoUserId(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskUserId:I

    .line 1728
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method private getSourceStackBounds()Landroid/graphics/Rect;
    .locals 1

    .line 2074
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    if-eqz v0, :cond_0

    .line 2075
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 2077
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getStateModeString(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p1, "Unknown StateMode"

    return-object p1

    :pswitch_0
    const-string p1, "StateMode.HOME_HOLD"

    return-object p1

    :pswitch_1
    const-string p1, "StateMode.TASK_HOLD"

    return-object p1

    :pswitch_2
    const-string p1, "StateMode.STATE_ON_DRAG"

    return-object p1

    :pswitch_3
    const-string p1, "StateMode.STATE_INIT"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x10001
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hideTaskView(Z)V
    .locals 10

    .line 2328
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    if-eqz v0, :cond_0

    .line 2329
    new-instance v2, Landroid/graphics/RectF;

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2330
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v3

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    xor-int/lit8 v5, p1, 0x1

    .line 2331
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v6

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v7

    const/4 v8, 0x1

    new-instance v9, Lcom/miui/home/recents/-$$Lambda$NavStubView$qoPoQ_xJ_KZt4dYsnv45CyxZs24;

    invoke-direct {v9, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$qoPoQ_xJ_KZt4dYsnv45CyxZs24;-><init>(Lcom/miui/home/recents/NavStubView;)V

    move-object v1, p0

    .line 2330
    invoke-direct/range {v1 .. v9}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZFFZLjava/lang/Runnable;)V

    goto :goto_0

    .line 2334
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->finishHideTaskView()V

    :goto_0
    return-void
.end method

.method private homeTouchResolution(Landroid/view/MotionEvent;)V
    .locals 4

    .line 3034
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3050
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

    .line 3052
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 3053
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    .line 3055
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    .line 3056
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3060
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->actionUpResolution()V

    .line 3061
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeHomeModeLayoutListener()V

    .line 3062
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    goto :goto_0

    .line 3037
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->initValue(Landroid/view/MotionEvent;)V

    .line 3039
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    .line 3040
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->notifyHomeModeFsGestureStart()V

    :cond_0
    const/4 p1, 0x0

    .line 3043
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mStartAppModeGesture:Z

    .line 3044
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    const/4 p1, -0x1

    .line 3045
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    .line 3046
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    :goto_0
    return-void

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

.method private initAndUpdateSmallWindowCrop(Landroid/view/MotionEvent;)V
    .locals 2

    .line 3722
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isSmallWindowInit()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3725
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->shouldInitSmallWindowCrop()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mQueryTaskSupportSmallWindowState:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    sget-object v1, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;->IDLE:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    if-ne v0, v1, :cond_1

    .line 3727
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindow(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3728
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->initSmallWindowCrop()V

    .line 3730
    :cond_0
    sget-object p1, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;->FINISH:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mQueryTaskSupportSmallWindowState:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    goto :goto_0

    .line 3731
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isSmallWindowInit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3732
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateSmallwindowCrop(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initSmallWindowCrop()V
    .locals 3

    .line 3737
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "NavStubView::initSmallWindowCrop"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3740
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3742
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->initSmallWindowCrop(I)V

    return-void
.end method

.method private initTaskViews()V
    .locals 5

    .line 2022
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2023
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

    .line 2024
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    .line 2025
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setScaleX(F)V

    .line 2026
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setScaleY(F)V

    const/4 v3, 0x0

    .line 2027
    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    .line 2028
    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    .line 2029
    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/TaskView;->setFullscreenProgress(F)V

    .line 2030
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    .line 2031
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v3

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewRadius:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    .line 2032
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTaskRatio(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initValue(Landroid/view/MotionEvent;)V
    .locals 2

    .line 3333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mDownX:F

    .line 3334
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mDownY:F

    .line 3336
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mDownX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mDelta:F

    .line 3337
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mPivotLocX:I

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailX:F

    .line 3338
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mPivotLocY:I

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailY:F

    .line 3339
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsSafeArea:Z

    const/4 p1, 0x0

    .line 3340
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHold:Z

    const p1, 0x10001

    .line 3342
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateStateMode(I)V

    .line 3343
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v0, "current state mode: StateMode.STATE_INIT"

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private injectMotionEvent(I)V
    .locals 21

    move-object/from16 v1, p0

    .line 1107
    iget-object v0, v1, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    return-void

    .line 1113
    :cond_0
    sget-object v2, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "injectMotionEvent action :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " downX: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
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

    .line 1113
    invoke-static {v2, v3}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 1119
    new-array v11, v2, [Landroid/view/MotionEvent$PointerProperties;

    .line 1121
    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v15, 0x0

    aput-object v3, v11, v15

    .line 1123
    aget-object v3, v11, v15

    invoke-virtual {v0, v15, v3}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 1124
    new-array v12, v2, [Landroid/view/MotionEvent$PointerCoords;

    .line 1125
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v12, v15

    .line 1127
    aget-object v3, v12, v15

    invoke-virtual {v0, v15, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1128
    aget-object v3, v12, v15

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1129
    aget-object v3, v12, v15

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1130
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    const/4 v10, 0x1

    .line 1132
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    .line 1133
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v16

    .line 1134
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    .line 1135
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v20

    move/from16 v9, p1

    move v0, v15

    move v15, v3

    .line 1130
    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v3

    :try_start_0
    const-string v4, "android.hardware.input.InputManager"

    .line 1138
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getInstance"

    .line 1139
    new-array v6, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    .line 1140
    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1143
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

    .line 1144
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

    .line 1146
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private isFastPullDown()Z
    .locals 2

    .line 3402
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

    .line 3390
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

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
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

    .line 3396
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

    .line 3398
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

    .line 821
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

    .line 2364
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

.method private isLandscape()Z
    .locals 2

    .line 520
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v0

    goto :goto_0

    .line 522
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

.method private isMistakeTouch()Z
    .locals 3

    .line 2994
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

    .line 2998
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentVisible:Z

    if-eqz v0, :cond_1

    return v1

    .line 3002
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsFullScreenMode:Z

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowNavBar:Z

    if-nez v0, :cond_3

    :goto_0
    return v2

    :cond_3
    return v1
.end method

.method private isPullLeft()Z
    .locals 2

    .line 3410
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

    .line 3406
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

    .line 508
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

.method private isRecentsLoaded()Z
    .locals 1

    .line 503
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 504
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

.method private isSmallWindowInit()Z
    .locals 1

    .line 3750
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->isInit()Z

    move-result v0

    return v0
.end method

.method private isStartSmallWindow(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 3791
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isSmallWindowInit()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->isStartSmallWindow(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private keyguardTouchResolution(Landroid/view/MotionEvent;)V
    .locals 2

    .line 3150
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3156
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->actionCommonMoveResolution(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 3160
    :pswitch_1
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMode:I

    const v0, 0x10002

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isFastPullUp()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3161
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCloseScreenshotIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3162
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    .line 3163
    invoke-virtual {p0, v1, v1, p1}, Lcom/miui/home/recents/NavStubView;->sendEvent(III)V

    const/4 v0, 0x1

    .line 3164
    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/home/recents/NavStubView;->sendEvent(III)V

    :cond_0
    const-string p1, "keyguardTouchResolution"

    .line 3167
    invoke-direct {p0, v1, v1, v1, p1}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    goto :goto_0

    .line 3153
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->initValue(Landroid/view/MotionEvent;)V

    :goto_0
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

.method public static synthetic lambda$new$0(Lcom/miui/home/recents/NavStubView;)V
    .locals 7

    .line 1836
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;Lcom/android/systemui/shared/recents/system/AssistDataReceiver;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic lambda$new$1()V
    .locals 2

    .line 1842
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->cancelRecentsAnimation(Z)V

    return-void
.end method

.method public static synthetic lambda$new$5(Lcom/miui/home/recents/NavStubView;)V
    .locals 1

    const/4 v0, 0x0

    .line 2856
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mDisableUpdateStatusBarClock:Z

    return-void
.end method

.method public static synthetic lambda$new$7(Lcom/miui/home/recents/NavStubView;)V
    .locals 8

    .line 3068
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeHomeModeLayoutListener()V

    .line 3069
    new-instance v1, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v5

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v6

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZFFLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$performAppToApp$4(Lcom/miui/home/recents/NavStubView;IIFFLandroid/graphics/RectF;FFF)V
    .locals 10

    move-object v8, p0

    .line 2743
    iget-boolean v0, v8, Lcom/miui/home/recents/NavStubView;->mCancelAppToAppAnim:Z

    if-eqz v0, :cond_0

    return-void

    .line 2746
    :cond_0
    iget v0, v8, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    .line 2747
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, p2

    goto :goto_0

    :cond_1
    iget v1, v8, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    :goto_0
    const/4 v2, 0x0

    move v3, p1

    if-eq v3, v1, :cond_2

    .line 2748
    iget v0, v8, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    sub-float v1, v2, v0

    mul-float v1, v1, p6

    add-float/2addr v0, v1

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    sub-float v0, v2, p3

    mul-float v0, v0, p6

    add-float/2addr v0, p3

    .line 2751
    iput v0, v8, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    sub-float/2addr v2, p4

    mul-float v2, v2, p6

    add-float v0, p4, v2

    .line 2752
    iput v0, v8, Lcom/miui/home/recents/NavStubView;->mPer:F

    .line 2753
    iget v0, v8, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v1, 0x5

    const/high16 v9, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_3

    .line 2754
    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, v8, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    .line 2755
    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v0

    iput v0, v8, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    const/4 v4, 0x0

    .line 2756
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v5

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v6

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p5

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZFFLjava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    sub-float v0, v9, p3

    mul-float v0, v0, p6

    add-float/2addr v0, p3

    move-object v1, p5

    move/from16 v2, p7

    move/from16 v4, p8

    .line 2759
    invoke-direct {p0, p5, v0, v2, v4}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2760
    iget-boolean v0, v8, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    if-eqz v0, :cond_4

    .line 2761
    iget v2, v8, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v5

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v6

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZFFLjava/lang/Runnable;)V

    .line 2765
    :cond_4
    :goto_2
    iget-object v0, v8, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_5

    .line 2766
    iget v1, v8, Lcom/miui/home/recents/NavStubView;->mOverviewBgAlpha:F

    sub-float/2addr v9, v1

    mul-float v9, v9, p6

    add-float/2addr v1, v9

    .line 2767
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->updateOverviewBackgroundAlpha(F)V

    :cond_5
    return-void
.end method

.method public static synthetic lambda$performAppToRecents$3(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;FFF)V
    .locals 7

    .line 2574
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2575
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(I)Landroid/graphics/RectF;

    move-result-object p1

    .line 2576
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mTargetTaskRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    .line 2577
    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mTargetTaskRectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v1

    .line 2578
    invoke-virtual {p3, v0, p1}, Landroid/graphics/RectF;->offset(FF)V

    .line 2587
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2588
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float/2addr v0, p4

    add-float v3, p1, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p3

    move v4, p5

    move v5, p6

    .line 2589
    invoke-direct/range {v1 .. v6}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFFZ)Landroid/graphics/RectF;

    .line 2592
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    .line 2594
    invoke-virtual {p2, p1, p1, p4}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    :cond_2
    return-void
.end method

.method public static synthetic lambda$qoPoQ_xJ_KZt4dYsnv45CyxZs24(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->finishHideTaskView()V

    return-void
.end method

.method public static synthetic lambda$startAppToHomeAnim$2(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;ILcom/miui/home/recents/views/FloatingIconView;Landroid/graphics/Rect;FLandroid/graphics/RectF;FFF)V
    .locals 20

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move-object/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    .line 2416
    iget-object v0, v10, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v15, 0x0

    if-eqz v0, :cond_0

    .line 2417
    iget v1, v10, Lcom/miui/home/recents/NavStubView;->mOverviewBgAlpha:F

    sub-float v2, v15, v1

    mul-float/2addr v2, v13

    add-float/2addr v1, v2

    .line 2418
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->updateOverviewBackgroundAlpha(F)V

    :cond_0
    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    const v0, 0x3f4ccccd    # 0.8f

    sub-float/2addr v0, v13

    const v1, 0x3e99999a    # 0.3f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    sub-float v0, v9, v13

    .line 2427
    :goto_0
    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 2429
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2430
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, v10, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    .line 2431
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->height()F

    move-result v0

    iput v0, v10, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    .line 2432
    iput v14, v10, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    .line 2433
    iget-object v0, v10, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    iget v1, v10, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 2435
    iget v4, v10, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v4

    move-object/from16 v3, p6

    move-object v15, v7

    move/from16 v7, v16

    move/from16 v19, v8

    move/from16 v8, v17

    move/from16 v16, v9

    move-object/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Lcom/miui/home/recents/NavStubView;->updateTaskView(Lcom/miui/home/recents/views/TaskView;ILandroid/graphics/RectF;IFZFFLjava/lang/Runnable;)V

    move/from16 v0, v19

    .line 2436
    invoke-virtual {v15, v0}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    .line 2437
    invoke-virtual {v15}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-direct {v10, v15}, Lcom/miui/home/recents/NavStubView;->getCurrentTaskViewRadius(Lcom/miui/home/recents/views/TaskView;)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    goto :goto_1

    :cond_2
    move v0, v8

    move/from16 v16, v9

    :goto_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    move v0, v8

    move/from16 v16, v9

    const/4 v1, 0x0

    move/from16 v2, p2

    .line 2440
    invoke-static {v1, v2, v12}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v10, v1, v2, v14, v0}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    :goto_2
    if-eqz v11, :cond_5

    .line 2442
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v10, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 2443
    invoke-virtual {v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2444
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float v1, v1, v16

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconTransparentEdge()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    neg-float v1, v1

    .line 2445
    invoke-virtual {v12, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 2446
    iget-object v1, v10, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v1, v12}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToHome(Landroid/graphics/RectF;)V

    cmpl-float v0, v0, v16

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move/from16 v2, v16

    :goto_3
    div-float v0, v14, p5

    .line 2447
    invoke-virtual {v11, v12, v2, v13, v0}, Lcom/miui/home/recents/views/FloatingIconView;->update(Landroid/graphics/RectF;FFF)V

    :cond_5
    return-void
.end method

.method public static synthetic lambda$startFirstTask$6(Lcom/miui/home/recents/NavStubView;FFLandroid/graphics/RectF;FFF)V
    .locals 8

    const/4 p5, 0x0

    sub-float p6, p5, p1

    mul-float/2addr p6, p4

    add-float/2addr p1, p6

    .line 2900
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    sub-float/2addr p5, p2

    mul-float/2addr p5, p4

    add-float/2addr p2, p5

    .line 2901
    iput p2, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    .line 2902
    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v5

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v6

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZFFLjava/lang/Runnable;)V

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

    .line 3562
    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    sub-double/2addr v2, p3

    double-to-float p1, v2

    goto :goto_0

    :cond_1
    move p1, p2

    .line 3564
    :goto_0
    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    return p1
.end method

.method private needFindClosingShortcutIcon()Z
    .locals 1

    .line 2241
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscape()Z

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

.method private onAppModeGestureEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 2358
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mStartAppModeGesture:Z

    .line 2359
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->cancelSyncTransactionApplier()V

    .line 2360
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeLayoutListener()V

    return-void
.end method

.method private onBreakOpenRectFAnimUpdate(Landroid/graphics/RectF;FFF)V
    .locals 2

    .line 2132
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    .line 2133
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    return-void
.end method

.method private onInputConsumerEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 938
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 942
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    if-eqz v0, :cond_3

    .line 943
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mEventReceiver:Ljava8/util/function/Predicate;

    if-eqz v0, :cond_3

    .line 944
    invoke-interface {v0, p1}, Ljava8/util/function/Predicate;->test(Ljava/lang/Object;)Z

    .line 948
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_5

    .line 950
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 951
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 953
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->endAppToRecentsAnimIfNeeded()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    if-ne p1, v1, :cond_7

    :cond_6
    const/4 p1, 0x0

    .line 955
    invoke-virtual {p0, v1, p1}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;)V

    :cond_7
    :goto_0
    return v1
.end method

.method private onLauncherStart()V
    .locals 5

    .line 1983
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->initTaskViews()V

    const/4 v0, 0x0

    .line 1984
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    .line 1985
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    .line 1986
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1987
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    .line 1989
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    .line 1991
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/Launcher;->updateOverviewBackgroundAlpha(F)V

    .line 1993
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isMinusUseBlurAnimation()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1994
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getMinusBlurRatio()F

    move-result v1

    goto :goto_0

    .line 1996
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isUseCompleteRecentsBlurAnimation()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    .line 1998
    :goto_0
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1999
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 1998
    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/common/Utilities;->fastBlurWhenUseCompleteAnimation(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    .line 2001
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->cancelAnimation()V

    .line 2003
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    .line 2004
    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerAlpha()F

    move-result v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    .line 2005
    invoke-virtual {v1}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result v1

    .line 2003
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    .line 2007
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/messages/FsGesturePrepareRecents;

    invoke-direct {v1}, Lcom/miui/home/recents/messages/FsGesturePrepareRecents;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 2008
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private quickSwitchTouchResolution(Landroid/view/MotionEvent;)V
    .locals 5

    .line 1674
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 1675
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 1678
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1679
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 1682
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->initValue(Landroid/view/MotionEvent;)V

    .line 1683
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStartNewTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1684
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;

    invoke-direct {v0}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1685
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {p1, v0, v2}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    .line 1686
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mStartAppModeGesture:Z

    .line 1687
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1688
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    .line 1691
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    goto :goto_0

    .line 1692
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v0, v3, :cond_4

    .line 1693
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateMotionEventVelocity(Landroid/view/MotionEvent;)V

    .line 1695
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 1696
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    .line 1698
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    .line 1699
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    invoke-virtual {p1, v4}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1700
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 1701
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_6

    .line 1702
    :cond_5
    iput-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    .line 1703
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->actionUpResolution()V

    const/4 p1, 0x0

    .line 1704
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    const-string p1, "QuickSwitchTouchResolution"

    .line 1705
    invoke-direct {p0, v2, v2, v2, p1}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method private recentsTouchResolution(Landroid/view/MotionEvent;)V
    .locals 1

    .line 3177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3185
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    const p1, 0x3f666666    # 0.9f

    .line 3186
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mCurShortcutMenuLayerScale:F

    .line 3188
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3192
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->actionUpResolution()V

    const-string p1, "recentsTouchResolution"

    const/4 v0, 0x0

    .line 3193
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    goto :goto_0

    .line 3180
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->initValue(Landroid/view/MotionEvent;)V

    .line 3181
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/FsGestureStartRecentsModeEvent;

    invoke-direct {v0}, Lcom/miui/home/recents/messages/FsGestureStartRecentsModeEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 3182
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->endAppToRecentsAnimIfNeeded()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private removeHomeModeLayoutListener()V
    .locals 2

    .line 3080
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3081
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mHomeModeTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 3082
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private removeLayoutListener()V
    .locals 2

    .line 1884
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1885
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1886
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1887
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

.method private resetLauncherProperty()V
    .locals 3

    .line 2339
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 2340
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 2341
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherView()V

    .line 2342
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->onAppModeGestureEnd()V

    :cond_0
    return-void
.end method

.method private resetLauncherView()V
    .locals 2

    .line 2012
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    .line 2015
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->updateOverviewBackgroundAlpha(F)V

    .line 2016
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 2017
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherState;->getShortcutMenuLayerAlpha()F

    move-result v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 2018
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherState;->getShortcutMenuLayerScale()F

    move-result v1

    .line 2016
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    return-void
.end method

.method private resetSmallWindowCrop()V
    .locals 1

    .line 3708
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    if-eqz v0, :cond_0

    .line 3709
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->resetSmallWindowCrop()V

    :cond_0
    return-void
.end method

.method private resetTaskView()V
    .locals 14

    .line 671
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->enterRecentsOfFsGesture()V

    .line 676
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->showStatusBar(Z)V

    .line 677
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isUseSimpleRecentsBlurAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 678
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/Utilities;->fastBlur(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    .line 680
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
    const-wide/16 v2, 0xc8

    if-ge v1, v0, :cond_2

    .line 682
    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskViewIndex(I)I

    move-result v4

    .line 684
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/home/recents/views/TaskView;

    .line 685
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v6

    sub-int v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-int v6, v0, v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/miui/home/recents/views/TaskView;->setTranslationZ(F)V

    .line 687
    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskView;->getFullscreenProgress()F

    move-result v8

    .line 688
    invoke-direct {p0, v5}, Lcom/miui/home/recents/NavStubView;->getCurrentTaskViewRadius(Lcom/miui/home/recents/views/TaskView;)F

    move-result v10

    .line 689
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getCurrentTaskViewRatio()F

    move-result v11

    .line 690
    invoke-virtual {v5}, Lcom/miui/home/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/miui/home/recents/NavStubView$8;

    move-object v6, v3

    move-object v7, p0

    move-object v9, v5

    invoke-direct/range {v6 .. v11}, Lcom/miui/home/recents/NavStubView$8;-><init>(Lcom/miui/home/recents/NavStubView;FLcom/miui/home/recents/views/TaskView;FF)V

    .line 691
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/miui/home/recents/NavStubView$7;

    invoke-direct {v3, p0, v5}, Lcom/miui/home/recents/NavStubView$7;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)V

    .line 702
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 708
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    const v2, 0x3e99999a    # 0.3f

    const/4 v3, 0x4

    .line 710
    iget v6, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    sub-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mResponseOffset:F

    mul-float/2addr v3, v4

    add-float v11, v3, v2

    const/4 v2, 0x1

    .line 711
    invoke-virtual {v5, v2}, Lcom/miui/home/recents/views/TaskView;->setIgnoreTranslationWhenFindTouchView(Z)V

    .line 713
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v2

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v12, 0x3f733333    # 0.95f

    new-instance v13, Lcom/miui/home/recents/NavStubView$9;

    invoke-direct {v13, p0, v5}, Lcom/miui/home/recents/NavStubView$9;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)V

    move-object v3, v5

    move v4, v1

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v12

    move-object v12, v13

    invoke-virtual/range {v2 .. v12}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewSpringAnim(Lcom/miui/home/recents/views/TaskView;IFFFFFFFLjava/lang/Runnable;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 722
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v1}, Lcom/miui/home/recents/OverviewState;->getOverviewBackgroundAlpha()F
    
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->sendFakeEvent()V
    
    move-result v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/Launcher;->updateOverviewBackgroundAlpha(FJ)V

    return-void
.end method

.method private resumeLastTask()V
    .locals 2

    .line 2860
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "resumeLastTask"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->disableUpdateStatusBarClock()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2862
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private sendSmallWindowMessage(ILjava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 3696
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSmallWindowCropHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    .line 3697
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSmallWindowCropHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 3698
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSmallWindowCropHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setAnimVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;I)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 2669
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 2670
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 2671
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    .line 2672
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    .line 2674
    invoke-static {p2}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v2

    .line 2676
    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    add-float/2addr v3, v6

    if-eqz v2, :cond_1

    .line 2677
    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    .line 2678
    :cond_1
    iget v6, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRatio:F

    .line 2679
    iget v7, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    iget v8, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    div-float/2addr v8, v5

    add-float/2addr v7, v8

    .line 2681
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 2683
    iget v8, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    sub-float/2addr v8, v0

    iput v8, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    .line 2684
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    .line 2686
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    div-float v8, v1, v5

    add-float/2addr v0, v8

    sub-float/2addr v0, v3

    if-eqz v2, :cond_2

    .line 2687
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    :cond_2
    sub-float/2addr v1, v4

    .line 2688
    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsTaskStackLayoutStyleVertical:Z

    if-nez v2, :cond_3

    const/high16 v2, -0x3ee00000    # -10.0f

    const/high16 v3, 0x41200000    # 10.0f

    .line 2689
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2691
    :cond_3
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRatio:F

    sub-float/2addr v2, v6

    .line 2692
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

    .line 2699
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(FFFF)V

    goto :goto_0

    :pswitch_1
    mul-float/2addr v0, v5

    mul-float/2addr v3, v5

    mul-float/2addr v1, v5

    mul-float/2addr v2, v5

    .line 2696
    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(FFFF)V

    goto :goto_0

    :cond_4
    mul-float/2addr v3, v5

    neg-float p2, v0

    mul-float/2addr p2, v5

    mul-float/2addr v1, v5

    mul-float/2addr v2, v5

    .line 2702
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

.method private setSyncTransactionApplier()V
    .locals 3

    .line 1864
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1865
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

.method private shouldInitSmallWindowCrop()Z
    .locals 2

    .line 3746
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHold:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    const v1, 0x3ecccccd    # 0.4f

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

.method private showRecents()V
    .locals 4

    const/4 v0, 0x1

    .line 1949
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    .line 1950
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRecentsViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1952
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iput-boolean v0, v1, Lcom/miui/home/recents/OverviewState;->mIsFromFsGesture:Z

    .line 1953
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iput-boolean v0, v1, Lcom/miui/home/recents/OverviewState;->mIsIgnoreOverviewBackgroundAnim:Z

    .line 1954
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1955
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/OverviewState;->onStateEnabled(Lcom/miui/home/launcher/Launcher;)V

    goto :goto_0

    .line 1957
    :cond_0
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v1, v3, v2}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 1959
    :goto_0
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iput-boolean v2, v1, Lcom/miui/home/recents/OverviewState;->mIsFromFsGesture:Z

    .line 1960
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iput-boolean v2, v1, Lcom/miui/home/recents/OverviewState;->mIsIgnoreOverviewBackgroundAnim:Z

    .line 1961
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1962
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v1, v3, v0}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    .line 1963
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    .line 1964
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskId(I)I

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    .line 1966
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v3, Lcom/miui/home/recents/messages/FsGesturePrepareRecents;

    invoke-direct {v3}, Lcom/miui/home/recents/messages/FsGesturePrepareRecents;-><init>()V

    invoke-virtual {v1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1967
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v3, Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;

    invoke-direct {v3}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;-><init>()V

    invoke-virtual {v1, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1969
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/LauncherStateManager;->setUserControlled(Z)V

    .line 1971
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iput-boolean v2, v0, Lcom/miui/home/recents/OverviewState;->disableRestore:Z

    .line 1972
    new-instance v0, Lcom/miui/home/recents/NavStubView$15;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$15;-><init>(Lcom/miui/home/recents/NavStubView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/recents/NavStubView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startBlurAnim(F)V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isUseCompleteRecentsBlurAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 462
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    .line 461
    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/Utilities;->fastBlurWhenUseCompleteAnimation(FLandroid/view/Window;Z)Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method private startNewTask(I)V
    .locals 2

    .line 2946
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "startNewTask"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2948
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2950
    invoke-virtual {p1, v0, v1}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZ)V

    :cond_0
    return-void
.end method

.method private startRecentsAnimation()V
    .locals 2

    .line 1846
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mStartRecentsAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startSmallWindow()V
    .locals 2

    .line 3795
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "NavStubView::startSmallWindow"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 3796
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->startSmallWindow(Landroid/graphics/RectF;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3797
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private startVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1632
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1633
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1635
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private stopVelocityTracker()V
    .locals 1

    .line 1639
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1640
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1641
    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private switchToScreenshot()V
    .locals 3

    .line 2835
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_0

    .line 2836
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v0

    .line 2837
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2838
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/recents/views/RecentsView;->updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;)Lcom/miui/home/recents/views/TaskView;

    :cond_0
    return-void
.end method

.method private updateMotionEventVelocity(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1646
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    .line 1648
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    .line 1647
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1649
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1650
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 1651
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    .line 1652
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p1

    .line 1653
    new-instance v1, Landroid/graphics/PointF;

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    div-float/2addr p1, v2

    invoke-direct {v1, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    :cond_0
    return-void
.end method

.method private updateOverviewBackgroundAlpha()V
    .locals 5

    .line 2161
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherState;->getOverviewBackgroundAlpha()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2162
    :goto_0
    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v2}, Lcom/miui/home/recents/OverviewState;->getOverviewBackgroundAlpha()F

    move-result v2

    sub-float v3, v2, v0

    .line 2163
    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mOverviewBgAlpha:F

    .line 2164
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    if-ne v0, v1, :cond_1

    .line 2165
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mOverviewBgAlpha:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mOverviewBgAlpha:F

    .line 2167
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_2

    .line 2168
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mOverviewBgAlpha:F

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->updateOverviewBackgroundAlpha(F)V

    :cond_2
    return-void
.end method

.method private updateScreenSize()V
    .locals 3

    .line 1466
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1467
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1468
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 1469
    iput-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsVertical:Z

    .line 1470
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    .line 1471
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 1473
    iput-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsVertical:Z

    .line 1474
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    .line 1475
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    .line 1477
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskInitRectF()Landroid/graphics/Rect;

    .line 1478
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    .line 1479
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentTransitionRequest(I)V

    :cond_1
    return-void
.end method

.method private updateSmallWindowCropConfiguration()V
    .locals 1

    .line 3702
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    if-eqz v0, :cond_0

    .line 3703
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->updateConfiguration()V

    :cond_0
    return-void
.end method

.method private updateSmallwindowCrop(Landroid/view/MotionEvent;)V
    .locals 3

    .line 3754
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->isStartSmallWindow(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3755
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->isToLargeState()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3756
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    const/16 v0, 0x103

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView$H;->sendMessage(Landroid/os/Message;)Z

    .line 3757
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->toLargeState()V

    goto :goto_0

    .line 3760
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    new-instance v1, Lcom/miui/home/recents/NavStubView$30;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$30;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView$H;->post(Ljava/lang/Runnable;)Z

    .line 3766
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsSafeArea:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->updateState(ZFF)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateStateMode(I)V
    .locals 3

    .line 726
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMode:I

    .line 727
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current state mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->getStateModeString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateSysUiFlags(FI)V
    .locals 1

    .line 1809
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 1812
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHold:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1815
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/NavStubView;->updateSysUiFlagsDirectly(FI)V

    goto :goto_1

    .line 1813
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setWindowThresholdCrossed(Z)V

    :goto_1
    return-void

    :cond_3
    :goto_2
    return-void
.end method

.method private updateSysUiFlagsDirectly(FI)V
    .locals 2

    .line 1820
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_5

    iget-boolean v0, v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 1823
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->useHomeSysUiFlags(F)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1824
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setWindowThresholdCrossed(Z)V

    .line 1825
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object p1

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasLightBgForStatusBar()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(Z)V

    goto :goto_1

    .line 1826
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1827
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

    .line 1829
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSysUiStatusNavFlags()I

    move-result p1

    .line 1830
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz p1, :cond_3

    move p2, v0

    :cond_3
    invoke-virtual {v1, p2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setWindowThresholdCrossed(Z)V

    .line 1831
    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(I)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    return-void
.end method

.method private updateTaskPosition(FFFFFFF)Landroid/graphics/RectF;
    .locals 10

    move-object v9, p0

    .line 2979
    iget-boolean v8, v9, Lcom/miui/home/recents/NavStubView;->mIsVertical:Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(FFFFFFFZ)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method private updateTaskPosition(FFFFFFFZ)Landroid/graphics/RectF;
    .locals 1

    .line 2983
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {v0, p7}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 2984
    iget-object p7, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {p7, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setX(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setY(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setWidth(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRatio(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p1

    invoke-virtual {p1, p6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 2985
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    .line 2986
    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    sget-object p3, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p1, p3}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p1

    iput-boolean p1, p2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->launcherStateNormal:Z

    .line 2988
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {p2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->getTargetSet()Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {p1, p2, p3, p8}, Lcom/miui/home/recents/util/ClipAnimationHelper;->applyTransformNew(Lcom/miui/home/recents/util/RemoteAnimationTargetSet;Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;Z)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method private updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;
    .locals 8

    .line 2971
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    move v4, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v0, p1

    move v4, v0

    :goto_0
    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(FFFFFFF)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method private updateTaskPosition(Landroid/graphics/RectF;FFFZ)Landroid/graphics/RectF;
    .locals 9

    .line 2975
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    move v4, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v0, p1

    move v4, v0

    :goto_0
    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(FFFFFFFZ)Landroid/graphics/RectF;

    move-result-object p1

    return-object p1
.end method

.method private updateTaskView(Lcom/miui/home/recents/views/TaskView;ILandroid/graphics/RectF;IFZFFLjava/lang/Runnable;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v1, p4

    .line 527
    new-instance v4, Landroid/graphics/RectF;

    move-object/from16 v5, p3

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 528
    iget-object v6, v0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getRecentsTaskViewHeaderHeight()I

    move-result v6

    int-to-float v6, v6

    .line 530
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_1

    iget v7, v0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    if-eq v7, v8, :cond_1

    .line 531
    iget-object v7, v0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v7, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToHome(Landroid/graphics/RectF;)V

    .line 532
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isLandscape()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 534
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_0

    .line 535
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v7, v10

    .line 536
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v6

    div-float/2addr v7, v10

    goto :goto_0

    :cond_0
    move v7, v9

    .line 538
    :goto_0
    iget v10, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v7

    iput v10, v4, Landroid/graphics/RectF;->right:F

    if-ge v3, v1, :cond_1

    .line 539
    iget v10, v0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v11, 0x5

    if-eq v10, v11, :cond_1

    .line 540
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v5, v7

    goto :goto_1

    :cond_1
    move v5, v9

    .line 545
    :goto_1
    iget-object v7, v0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v7, :cond_2

    iget-boolean v7, v7, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    if-eqz v7, :cond_2

    .line 546
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v7

    invoke-direct/range {p0 .. p1}, Lcom/miui/home/recents/NavStubView;->getCurrentTaskViewRadius(Lcom/miui/home/recents/views/TaskView;)F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v7, v10}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    .line 549
    :cond_2
    iget v7, v0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v7, v10, v7

    .line 550
    invoke-virtual {v2, v7}, Lcom/miui/home/recents/views/TaskView;->setFullscreenProgress(F)V

    .line 555
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v7

    const v11, 0x47c35000    # 100000.0f

    if-eqz v7, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v7

    if-eqz v7, :cond_9

    .line 556
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v7, v12

    .line 557
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 558
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v13

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v13, v14}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v13

    .line 559
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    sub-float/2addr v15, v6

    mul-float/2addr v14, v15

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    .line 560
    iget v15, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v15, v14

    iput v15, v12, Landroid/graphics/RectF;->bottom:F

    .line 562
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v14

    .line 564
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    add-float v14, v14, p5

    neg-float v14, v14

    sub-int v8, v3, v1

    int-to-float v9, v8

    mul-float/2addr v14, v9

    add-float/2addr v14, v5

    .line 566
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getRight()I

    move-result v9

    add-int/2addr v5, v9

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v15, v5

    add-float/2addr v5, v14

    cmpl-float v9, v5, v11

    if-lez v9, :cond_3

    .line 568
    sget-object v5, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateTaskView:tranX error   centerX="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, "   offsetX="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, "   targetRect="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "   rectNoInset="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x47c35000    # 100000.0f

    .line 575
    :cond_3
    iget v9, v0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v9, v9

    mul-float/2addr v9, v10

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v9, v11

    .line 579
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v11

    const/high16 v14, 0x40000000    # 2.0f

    if-eqz v11, :cond_4

    iget v11, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    if-eq v3, v11, :cond_5

    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 580
    :cond_5
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    .line 582
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v9

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getCurrentTaskViewRatio()F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTaskRatio(F)V

    const/4 v9, 0x0

    const/4 v13, 0x0

    goto :goto_2

    .line 584
    :cond_6
    iget-boolean v11, v0, Lcom/miui/home/recents/NavStubView;->mIsTaskStackLayoutStyleVertical:Z

    if-eqz v11, :cond_7

    .line 585
    iget v11, v0, Lcom/miui/home/recents/NavStubView;->mPer:F

    iget v15, v0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    int-to-float v15, v15

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    mul-float/2addr v13, v9

    sub-float/2addr v15, v13

    div-float/2addr v15, v14

    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    invoke-direct {v0, v11, v15, v9}, Lcom/miui/home/recents/NavStubView;->getPercentsValue(FFF)F

    move-result v9

    .line 586
    iget v11, v0, Lcom/miui/home/recents/NavStubView;->mPer:F

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x32

    add-int/lit8 v8, v8, 0x19

    int-to-float v8, v8

    const/4 v13, 0x0

    invoke-direct {v0, v11, v13, v8}, Lcom/miui/home/recents/NavStubView;->getPercentsValue(FFF)F

    move-result v8

    move/from16 v17, v9

    move v9, v8

    move/from16 v8, v17

    goto :goto_2

    :cond_7
    const/4 v13, 0x0

    .line 588
    invoke-virtual {v12}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    const/high16 v9, 0x43960000    # 300.0f

    .line 589
    iget v11, v0, Lcom/miui/home/recents/NavStubView;->mPer:F

    mul-float/2addr v9, v11

    mul-float/2addr v9, v11

    mul-float/2addr v9, v11

    :goto_2
    mul-float/2addr v6, v7

    div-float/2addr v6, v14

    sub-float v6, v8, v6

    .line 592
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTop()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getBottom()I

    move-result v15

    add-int/2addr v11, v15

    int-to-float v11, v11

    div-float/2addr v11, v14

    sub-float/2addr v6, v11

    add-float/2addr v6, v9

    const v11, 0x47c35000    # 100000.0f

    cmpl-float v14, v6, v11

    if-lez v14, :cond_8

    .line 594
    sget-object v6, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateTaskView:tranY error   centerY="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "   offsetY="

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, "   targetRect="

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "   rectNoInset="

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    move v8, v11

    move v7, v5

    goto :goto_3

    :cond_8
    move v8, v6

    move v6, v7

    move v7, v5

    goto :goto_3

    :cond_9
    move v13, v9

    move v6, v10

    move v7, v13

    move v8, v7

    .line 601
    :goto_3
    iget-object v4, v0, Lcom/miui/home/recents/NavStubView;->mOnHandValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v4}, Landroidx/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v4

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v4, v5

    sub-int v5, v3, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float v11, p8, v4

    if-eqz p6, :cond_a

    .line 604
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v1

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v5, v6

    move/from16 v9, p7

    move v10, v11

    move-object/from16 v11, p9

    invoke-virtual/range {v1 .. v11}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewSpringAnim(Lcom/miui/home/recents/views/TaskView;IFFFFFFFLjava/lang/Runnable;)V

    goto :goto_5

    .line 607
    :cond_a
    iget-object v4, v0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    invoke-virtual {v4}, Lcom/miui/home/recents/GestureStateMachine;->isInAppTaskHoldState()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->useHorizontalLayoutStyleToUpdateTaskView()Z

    move-result v4

    if-eqz v4, :cond_c

    if-ge v3, v1, :cond_b

    const/16 v16, 0x1

    goto :goto_4

    :cond_b
    const/4 v1, -0x1

    move/from16 v16, v1

    .line 609
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int v1, v1, v16

    int-to-float v1, v1

    const v3, 0x3ee66666    # 0.45f

    mul-float/2addr v1, v3

    add-float/2addr v7, v1

    move v10, v13

    .line 611
    :cond_c
    invoke-virtual {v2, v7}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    .line 612
    invoke-virtual {v2, v8}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    .line 613
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/miui/home/recents/views/TaskView;->setPivotX(F)V

    .line 614
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/miui/home/recents/views/TaskView;->setPivotY(F)V

    .line 615
    invoke-virtual {v2, v6}, Lcom/miui/home/recents/views/TaskView;->setScaleX(F)V

    .line 616
    invoke-virtual {v2, v6}, Lcom/miui/home/recents/views/TaskView;->setScaleY(F)V

    .line 617
    invoke-virtual {v2, v10}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    if-eqz p9, :cond_d

    .line 619
    invoke-interface/range {p9 .. p9}, Ljava/lang/Runnable;->run()V

    :cond_d
    :goto_5
    return-void
.end method

.method private updateTaskViewNew(Landroid/graphics/RectF;IFZFFLjava/lang/Runnable;)V
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v8, p7

    .line 626
    invoke-direct/range {v0 .. v8}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZFFZLjava/lang/Runnable;)V

    return-void
.end method

.method private updateTaskViewNew(Landroid/graphics/RectF;IFZFFZLjava/lang/Runnable;)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 631
    invoke-direct/range {v0 .. v9}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZFFZLjava/lang/Runnable;Z)V

    return-void
.end method

.method private updateTaskViewNew(Landroid/graphics/RectF;IFZFFZLjava/lang/Runnable;Z)V
    .locals 16

    move-object/from16 v10, p0

    .line 637
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez p9, :cond_0

    iget-object v0, v10, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->isIsInSmallWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 641
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/miui/home/recents/NavStubView;->isInvalidRectF(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p8, :cond_1

    .line 643
    invoke-interface/range {p8 .. p8}, Ljava/lang/Runnable;->run()V

    .line 645
    :cond_1
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTaskViewNew error: rectF="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    move-object/from16 v11, p1

    .line 649
    iget-object v0, v10, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x0

    if-eqz p8, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v13

    :goto_0
    move v15, v0

    move v14, v13

    :goto_1
    if-ge v14, v12, :cond_6

    .line 652
    iget-object v0, v10, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskViewIndex(I)I

    move-result v2

    .line 653
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p7, :cond_4

    iget v0, v10, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    if-ne v2, v0, :cond_4

    goto :goto_2

    .line 656
    :cond_4
    iget-object v0, v10, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p8

    .line 658
    invoke-direct/range {v0 .. v9}, Lcom/miui/home/recents/NavStubView;->updateTaskView(Lcom/miui/home/recents/views/TaskView;ILandroid/graphics/RectF;IFZFFLjava/lang/Runnable;)V

    move v15, v13

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 661
    invoke-direct/range {v0 .. v9}, Lcom/miui/home/recents/NavStubView;->updateTaskView(Lcom/miui/home/recents/views/TaskView;ILandroid/graphics/RectF;IFZFFLjava/lang/Runnable;)V

    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_6
    if-eqz v15, :cond_7

    .line 666
    invoke-interface/range {p8 .. p8}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void

    :cond_8
    :goto_3
    return-void
.end method

.method private updateTaskViewToInitPosition()V
    .locals 8

    .line 1904
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v0, 0x2

    .line 1905
    new-array v0, v0, [I

    .line 1906
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 1907
    aget v0, v0, v2

    int-to-float v0, v0

    iget v2, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 1908
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStateMachine;->isInAppTaskHoldState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->useHorizontalLayoutStyleToUpdateTaskView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1909
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const v2, 0x3ee66666    # 0.45f

    mul-float/2addr v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    .line 1910
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    div-float/2addr v4, v3

    .line 1911
    invoke-virtual {v1, v0, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 1913
    :cond_0
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const/4 v4, 0x0

    .line 1914
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v5

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v6

    const/4 v7, 0x0

    move-object v0, p0

    .line 1913
    invoke-direct/range {v0 .. v7}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZFFLjava/lang/Runnable;)V

    return-void
.end method

.method private updateViewLayout(I)V
    .locals 2

    .line 3587
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3588
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->getWindowParam(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3590
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3591
    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mNeedRender:Z

    .line 3593
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "need render:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mNeedRender:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 3595
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    :cond_2
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

.method private useHorizontalLayoutStyleToUpdateTaskView()Z
    .locals 5

    .line 2198
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

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mInitX:F

    sub-float/2addr v0, v3

    .line 2199
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x42700000    # 60.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2200
    :goto_0
    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    add-int/lit16 v4, v4, -0xfa

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-nez v3, :cond_2

    if-nez v0, :cond_3

    .line 2201
    :cond_2
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsTaskStackLayoutStyleVertical:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method


# virtual methods
.method public actionMoveAppDrag()V
    .locals 9

    .line 2173
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "actionMoveAppDrag"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 2174
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-boolean v0, v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    if-eqz v0, :cond_4

    .line 2175
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2176
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    .line 2177
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->startBreakOpenRectFAnim()V

    goto :goto_0

    .line 2178
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2179
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getCurRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateEndRectF(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 2180
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2181
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->adjustAppHoldAnimStartToCur()V

    .line 2182
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRatio:F

    iget v6, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    iget v7, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    iget v8, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskAlpha:F

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(FFFFFFF)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    .line 2186
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateOverviewBackgroundAlpha()V

    .line 2187
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getCurrentPositionTaskIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->updateSysUiFlags(FI)V

    :cond_4
    return-void
.end method

.method public actionMoveAppTaskHold()V
    .locals 21

    move-object/from16 v8, p0

    .line 2205
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "actionMoveAppTaskHold"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    iget-object v0, v8, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-boolean v0, v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v8, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    if-eqz v0, :cond_0

    .line 2207
    iget-object v0, v8, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    iget v1, v8, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 2208
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v8, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 2209
    iget-object v0, v8, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    iget v1, v8, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 2210
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, v8, Lcom/miui/home/recents/NavStubView;->mCurTaskRatio:F

    iget v3, v8, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v0, 0x0

    .line 2211
    iput-boolean v0, v8, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimCancel:Z

    .line 2212
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v9

    iget-object v10, v8, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimXValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    iget-object v11, v8, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimYValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    iget-object v12, v8, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimWidthValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    iget-object v13, v8, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimRatioValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    iget v14, v8, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    iget v15, v8, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    iget v0, v8, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    iget v1, v8, Lcom/miui/home/recents/NavStubView;->mCurTaskRatio:F

    const v18, 0x3f7d70a4    # 0.99f

    const v19, 0x3e4ccccd    # 0.2f

    iget-object v2, v8, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimUpdateRunnable:Ljava/lang/Runnable;

    move/from16 v16, v0

    move/from16 v17, v1

    move-object/from16 v20, v2

    invoke-virtual/range {v9 .. v20}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startAppHoldTaskAnim(Landroidx/dynamicanimation/animation/FloatValueHolder;Landroidx/dynamicanimation/animation/FloatValueHolder;Landroidx/dynamicanimation/animation/FloatValueHolder;Landroidx/dynamicanimation/animation/FloatValueHolder;FFFFFFLjava/lang/Runnable;)V

    .line 2215
    iget-object v1, v8, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    iget v2, v8, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    iget v3, v8, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const/4 v4, 0x1

    const v5, 0x3f7d70a4    # 0.99f

    const v6, 0x3e4ccccd    # 0.2f

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZFFLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public actionMoveHomeDrag()V
    .locals 2

    .line 3117
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "actionMoveHomeDrag"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 3119
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3120
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurShortcutMenuLayerScale:F

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    .line 3123
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateOverviewBackgroundAlpha()V

    return-void
.end method

.method public actionMoveHomeTaskHold()V
    .locals 12

    .line 3127
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "actionMoveHomeTaskHold"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskWidthHome()F

    .line 3130
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskXHome()F

    .line 3132
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewWidth:F

    .line 3133
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    if-eqz v1, :cond_0

    .line 3134
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 3136
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

    .line 3137
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewX:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 3138
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewWidth:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 3139
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    sub-float v2, v1, v0

    iput v2, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    .line 3140
    iput v1, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, -0x1

    .line 3142
    iget v7, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const/4 v8, 0x1

    const v9, 0x3f666666    # 0.9f

    const v10, 0x3e4ccccd    # 0.2f

    const/4 v11, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZFFLjava/lang/Runnable;)V

    .line 3143
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateOverviewBackgroundAlpha()V

    return-void
.end method

.method public actionMoveQuickSwitchTaskHold()V
    .locals 9

    .line 1658
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "actionMoveQuickSwitchTaskHold"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1661
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mAppHoldTaskAnimCancel:Z

    .line 1662
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->adjustAppHoldAnimStartToCur()V

    .line 1663
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRatio:F

    iget v6, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    iget v7, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(FFFFFFF)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    .line 1666
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v6

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZFFLjava/lang/Runnable;)V

    .line 1668
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateOverviewBackgroundAlpha()V

    .line 1669
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getCurrentPositionTaskIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->updateSysUiFlags(FI)V

    :cond_0
    return-void
.end method

.method public actionMoveRecentsDrag()V
    .locals 2

    .line 3201
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "actionMoveRecentsDrag"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3204
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startFsRecentsMoveAnim(Lcom/miui/home/recents/views/RecentsView;)V

    :cond_0
    return-void
.end method

.method public disableInputProxy()V
    .locals 0

    return-void
.end method

.method public enableInputProxy()V
    .locals 2

    .line 929
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->enableInputConsumer()V

    .line 930
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$7BL0kbxBcE19-XdTQcRtA1ebi74;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$7BL0kbxBcE19-XdTQcRtA1ebi74;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/InputConsumerController;->setTouchListener(Lcom/android/systemui/shared/recents/system/InputConsumerController$TouchListener;)V

    .line 932
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$HQJffUiX26iA8CLG4RJIaWIPVhA;

    invoke-direct {v1, v0}, Lcom/miui/home/recents/-$$Lambda$HQJffUiX26iA8CLG4RJIaWIPVhA;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mEventReceiver:Ljava8/util/function/Predicate;

    :cond_0
    return-void
.end method

.method public enterAppHoldState()V
    .locals 1

    .line 2192
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-boolean v0, v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    if-eqz v0, :cond_0

    .line 2193
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->showRecents()V

    :cond_0
    return-void
.end method

.method public enterHomeHoldState()V
    .locals 12

    .line 3087
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "enterHomeHoldState"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3091
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/home/recents/OverviewState;->mIsIgnoreOverviewBackgroundAnim:Z

    .line 3092
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iput-boolean v1, v0, Lcom/miui/home/recents/OverviewState;->mIsFromFsGesture:Z

    .line 3093
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 3094
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iput-boolean v3, v0, Lcom/miui/home/recents/OverviewState;->mIsIgnoreOverviewBackgroundAnim:Z

    .line 3095
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iput-boolean v3, v0, Lcom/miui/home/recents/OverviewState;->mIsFromFsGesture:Z

    .line 3097
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->startHomeFadeOutAnim()V

    .line 3098
    new-instance v5, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v6, -0x1

    iget v7, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v9

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v10

    const/4 v11, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZFFLjava/lang/Runnable;)V

    .line 3099
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    if-nez v0, :cond_1

    .line 3100
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->addHomeModeLayoutListener()V

    .line 3102
    :cond_1
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    .line 3104
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterRecent(Landroid/view/View;)V

    .line 3106
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public enterRecentsHoldState()V
    .locals 2

    .line 3209
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "enterRecentsHoldState"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 3211
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->startRecentsStateHomeAnim(Z)V

    const/4 v0, 0x0

    .line 3212
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->startRecentsStateRecentsAnim(Z)V

    .line 3213
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/messages/FsGestureEnterRecentsHoldStateEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsHoldStateEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public exitHomeHoldState()V
    .locals 2

    .line 3110
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "exitHomeHoldState"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0xfa

    .line 3112
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->startHomeFadeInAnim(J)V

    .line 3113
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->startRecentsFadeOutAnim()V

    return-void
.end method

.method public exitRecentsHoldState()V
    .locals 2

    .line 3217
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "exitRecentsHoldState"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 3219
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->startRecentsStateHomeAnim(Z)V

    const/4 v0, 0x1

    .line 3220
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->startRecentsStateRecentsAnim(Z)V

    .line 3221
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/messages/FsGestureExitRecentsHoldStateEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/messages/FsGestureExitRecentsHoldStateEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public finish(ZLjava/lang/Runnable;)V
    .locals 3

    .line 2956
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish: toRecents="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->disableInputProxy()V

    .line 2959
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2960
    invoke-virtual {v0, p1, p2, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishController(ZLjava/lang/Runnable;Z)V

    :cond_0
    return-void
.end method

.method public finishAppToHome()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2509
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;)V

    .line 2510
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 2511
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->clearCurSelectedShortcutIcon()V

    .line 2513
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$19;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$19;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2520
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/BaseRecentsImpl;->setIsPerformGesture(Z)V

    .line 2521
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->onAppModeGestureEnd()V

    return-void
.end method

.method public finishPendingController()V
    .locals 1

    .line 2965
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_0

    .line 2966
    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishPendingController()V

    :cond_0
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 10

    .line 3569
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedRender:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isMistakeTouch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3570
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getWidth()I

    move-result v0

    .line 3571
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getHeight()I

    move-result v1

    .line 3573
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

    invoke-static {v2, v3}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 3576
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLocation:[I

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/NavStubView;->getLocationInWindow([I)V

    .line 3577
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLocation:[I

    const/4 v3, 0x0

    aget v5, v2, v3

    const/4 v4, 0x1

    .line 3578
    aget v6, v2, v4

    add-int v7, v5, v0

    add-int v8, v6, v1

    .line 3579
    sget-object v9, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return v3

    .line 3583
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p1

    return p1
.end method

.method public getCurrentPositionTaskIndex()I
    .locals 4

    .line 2656
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mInitX:F

    sub-float v2, v0, v1

    const/high16 v3, 0x43480000    # 200.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 2657
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getLeftTaskIndex()I

    move-result v0

    return v0

    :cond_0
    sub-float/2addr v0, v1

    const/high16 v1, -0x3cb80000    # -200.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 2659
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getRightTaskIndex()I

    move-result v0

    return v0

    .line 2661
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    return v0
.end method

.method public getHotSpaceHeight()I
    .locals 4

    const-string v0, "lithium"

    .line 3629
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x41600000    # 14.0f

    .line 3630
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0

    .line 3633
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    goto :goto_0

    :cond_1
    const/16 v0, 0x19

    :goto_0
    int-to-float v0, v0

    .line 3634
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    .line 3635
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscape()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3636
    sget-object v1, Lcom/miui/home/recents/NavStubView;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 3637
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x40900000    # 4.5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    const/4 v2, 0x5

    .line 3639
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v3, v1

    .line 3640
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3638
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    add-float/2addr v0, v1

    .line 3643
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
    .locals 2

    .line 2639
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2640
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2641
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getRightTaskIndex()I
    .locals 2

    .line 2648
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2649
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public getSmallWindowCropHandler()Landroid/os/Handler;
    .locals 2

    .line 3652
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCropHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3653
    new-instance v0, Lcom/miui/home/recents/NavStubView$SmallWindowCropHandler;

    invoke-static {}, Lcom/miui/home/launcher/util/UiThreadHelper;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/NavStubView$SmallWindowCropHandler;-><init>(Lcom/miui/home/recents/NavStubView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCropHandler:Landroid/os/Handler;

    .line 3655
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCropHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getWindowParam(I)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 3608
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7e8

    const/16 v4, 0x128

    const/4 v5, -0x3

    move-object v0, v6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 p1, 0x0

    .line 3618
    invoke-static {v6, p1}, Lcom/miui/home/recents/util/Utilities;->setFitInsetsTypes(Landroid/view/WindowManager$LayoutParams;I)V

    .line 3619
    iget p1, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x40

    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 p1, 0x50

    .line 3620
    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string p1, "GestureStubHome"

    .line 3621
    invoke-virtual {v6, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v6
.end method

.method public isDisableUpdateStatusBarClock()Z
    .locals 1

    .line 2846
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mDisableUpdateStatusBarClock:Z

    return v0
.end method

.method public isOverDistanceThread()Z
    .locals 2

    .line 3386
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

    .line 3374
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

.method public isSafeAreaConsideringGestureLine()Z
    .locals 2

    .line 3378
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-nez v0, :cond_0

    .line 3379
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result v0

    return v0

    .line 3381
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

.method public isToAppHoldState()Z
    .locals 10

    .line 359
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 360
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mLastVelocity:F

    sub-float v1, v0, v1

    const/high16 v2, -0x40000000    # -2.0f

    cmpg-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 361
    :goto_0
    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    add-int/lit16 v5, v5, -0xfa

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailDistance:F

    const/high16 v5, 0x41c80000    # 25.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 363
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    cmpg-float v4, v0, v4

    if-ltz v4, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    .line 364
    :goto_1
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

    if-lez v4, :cond_4

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mInitX:F

    sub-float/2addr v4, v5

    .line 365
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x42700000    # 60.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v3

    .line 366
    :goto_2
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mLastVelocity:F

    if-eqz v4, :cond_5

    .line 369
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mOnHandValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 370
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->adjustAppHoldAnimStartToCur()V

    :cond_5
    if-eqz v1, :cond_6

    .line 373
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->isIsInSmallWindow()Z

    move-result v0

    if-nez v0, :cond_6

    .line 374
    iput-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHold:Z

    :cond_6
    if-nez v1, :cond_7

    if-eqz v4, :cond_8

    .line 377
    :cond_7
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->isIsInSmallWindow()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    goto :goto_3

    :cond_8
    move v0, v3

    .line 378
    :goto_3
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    add-int/lit16 v4, v4, -0xfa

    int-to-float v4, v4

    cmpg-float v1, v1, v4

    if-gez v1, :cond_9

    goto :goto_4

    :cond_9
    move v2, v3

    :goto_4
    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    .line 380
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelOnHandSpringAnim()V

    .line 381
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mOnHandValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 382
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mOnHandHapticFeedRan:Z

    .line 383
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mOnHandValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v6, 0x0

    const v7, 0x3f7d70a4    # 0.99f

    const v8, 0x3e99999a    # 0.3f

    iget-object v9, p0, Lcom/miui/home/recents/NavStubView;->mOnHandHapticFeedRunnable:Ljava/lang/Runnable;

    invoke-virtual/range {v4 .. v9}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startOnHandSpringAnim(Landroidx/dynamicanimation/animation/FloatValueHolder;FFFLjava/lang/Runnable;)V

    .line 384
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->adjustAppHoldAnimStartToCur()V

    :cond_a
    return v0
.end method

.method public isToHomeDragState()Z
    .locals 2

    .line 349
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
    .locals 9

    .line 338
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    add-int/lit16 v1, v1, -0xfa

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailDistance:F

    const/high16 v1, 0x41c80000    # 25.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailXDelta:F

    .line 339
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailYDelta:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mInitX:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x42700000    # 60.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 341
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelOnHandSpringAnim()V

    .line 342
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mOnHandValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 343
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mOnHandValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v5, 0x0

    const v6, 0x3f7d70a4    # 0.99f

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startOnHandSpringAnim(Landroidx/dynamicanimation/animation/FloatValueHolder;FFFLjava/lang/Runnable;)V

    :cond_3
    return v0
.end method

.method public isToRecentsDrag()Z
    .locals 2

    .line 394
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
    .locals 2

    .line 390
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    add-int/lit16 v1, v1, -0xfa

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

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

.method public modifyTransformVisible(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    .line 2347
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mStartAppModeGesture:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2348
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 2349
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2350
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/recents/views/TaskViewTransform;

    add-int/lit8 v4, v0, -0x3

    if-lt v2, v4, :cond_0

    add-int/lit8 v4, v0, 0x3

    if-gt v2, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 2351
    :goto_1
    iput-boolean v4, v3, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public needBreakOpenAnim()Z
    .locals 2

    .line 1870
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 1871
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/home/recents/LauncherAppTransitionManager;->mIsOpenAnimRunning:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 866
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 868
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.systemui.fullscreen.statechange"

    .line 869
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mFullScreenModeChangeReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 874
    invoke-static {}, Lcom/android/systemui/shared/recents/system/InputConsumerController;->getRecentsAnimationInputConsumer()Lcom/android/systemui/shared/recents/system/InputConsumerController;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    .line 875
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/InputConsumerController;->registerInputConsumer()V

    .line 876
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-virtual {v0}, Lcom/miui/home/recents/FsGestureAssistHelper;->registerAssistObserver()V

    .line 878
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    if-nez v0, :cond_0

    .line 879
    new-instance v0, Lcom/miui/home/recents/NavStubView$10;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$10;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    .line 912
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    invoke-static {v0, v1}, Lcom/android/systemui/shared/recents/touchableRegion/TouchableRegionCompat;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 837
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

    .line 845
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getHotSpaceHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/home/recents/NavStubView;->updateViewLayout(I)V

    .line 847
    :cond_6
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    if-eqz v1, :cond_8

    .line 849
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isMistakeTouch()Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v3

    goto :goto_4

    :cond_7
    const/16 v4, 0x8

    .line 848
    :goto_4
    invoke-virtual {v1, v4}, Lcom/miui/home/recents/AntiMistakeTouchView;->updateVisibilityState(I)V

    :cond_8
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_5

    :cond_9
    move v0, v3

    .line 853
    :goto_5
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->isInDarkMode(Landroid/content/res/Configuration;)Z

    move-result p1

    .line 855
    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsDarkMode:Z

    if-eq v1, p1, :cond_a

    .line 856
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsDarkMode:Z

    goto :goto_6

    :cond_a
    move v2, v3

    .line 859
    :goto_6
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    if-eqz p1, :cond_c

    if-nez v0, :cond_b

    if-eqz v2, :cond_c

    :cond_b
    const/4 p1, 0x5

    const/4 v0, 0x0

    .line 860
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/NavStubView;->sendSmallWindowMessage(ILjava/lang/Object;)V

    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 917
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 919
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mFullScreenModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 920
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/InputConsumerController;->unregisterInputConsumer()V

    .line 921
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-virtual {v0}, Lcom/miui/home/recents/FsGestureAssistHelper;->unRegisterAssistObserver()V

    .line 923
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    if-eqz v0, :cond_0

    .line 924
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    invoke-static {v0, v1}, Lcom/android/systemui/shared/recents/touchableRegion/TouchableRegionCompat;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;)V

    :cond_0
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1309
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

    .line 1310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   mIsInFsMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsInFsMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1309
    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsInFsMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1318
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/monitor/LauncherMonitor;->getInstance()Lcom/miui/home/launcher/common/ILauncherMonitor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/common/ILauncherMonitor;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1320
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 1321
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isMistakeTouch()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1322
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-eqz v0, :cond_3

    .line 1323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/home/recents/NavStubView;->mLastTouchTime:J

    sub-long/2addr v2, v4

    .line 1324
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/miui/home/recents/AntiMistakeTouchView;->containsLocation(F)Z

    move-result v0

    if-eqz v0, :cond_2

    const-wide/16 v4, 0x7d0

    cmp-long v0, v2, v4

    if-lez v0, :cond_4

    .line 1326
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1001d3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1327
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1328
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    if-eqz p1, :cond_1

    .line 1329
    invoke-virtual {p1}, Lcom/miui/home/recents/AntiMistakeTouchView;->slideUp()V

    .line 1331
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/recents/NavStubView;->mLastTouchTime:J

    return v1

    .line 1334
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    if-eqz v0, :cond_4

    .line 1335
    invoke-virtual {v0}, Lcom/miui/home/recents/AntiMistakeTouchView;->slideUp()V

    return v1

    :cond_3
    return v1

    .line 1343
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 1344
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mDownNo:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mDownNo:I

    .line 1346
    :cond_5
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mDownNo:I

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mLastDownNo:I

    if-ne v0, v3, :cond_6

    return v1

    .line 1349
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v2, v0, :cond_7

    .line 1350
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mDownNo:I

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mLastDownNo:I

    .line 1353
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_14

    .line 1354
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateScreenSize()V

    .line 1355
    new-instance v0, Lcom/miui/home/recents/GestureStateMachine;

    const-string v3, "GestureStateMachine"

    invoke-direct {v0, v3, p0}, Lcom/miui/home/recents/GestureStateMachine;-><init>(Ljava/lang/String;Lcom/miui/home/recents/NavStubView;)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    .line 1357
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/home/recents/NavStubView;->mDownTime:J

    const/4 v0, 0x0

    .line 1358
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mLastVelocity:F

    .line 1362
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_d

    .line 1363
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_1

    :cond_9
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_b

    .line 1365
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/recents/RecentsModel;->getTaskInfoIgnoreFreeform()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 1366
    const-class v4, Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1368
    const-class v0, Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1369
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_a
    move v0, v2

    .line 1373
    :cond_b
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v3

    sget-object v4, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne v3, v4, :cond_c

    move v3, v2

    goto :goto_2

    :cond_c
    move v3, v1

    goto :goto_2

    :cond_d
    move v0, v1

    move v3, v0

    .line 1376
    :goto_2
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    .line 1377
    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v0, 0x4

    .line 1381
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    goto :goto_5

    .line 1383
    :cond_e
    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget v6, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/miui/home/recents/NavStubView;->mSystemUiFlags:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/miui/home/recents/FsGestureAssistHelper;->canTriggerAssistantAction(FFI)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v0, 0x6

    .line 1384
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    goto :goto_5

    .line 1385
    :cond_f
    iget-boolean v4, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    if-eqz v4, :cond_10

    const/4 v0, 0x5

    .line 1386
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    .line 1387
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v3, 0x67

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(II)V

    goto :goto_5

    :cond_10
    if-nez v0, :cond_12

    .line 1388
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToLauncher:Z

    if-eqz v0, :cond_11

    goto :goto_3

    :cond_11
    const/4 v0, 0x2

    .line 1401
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    .line 1402
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v3, 0x65

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(II)V

    goto :goto_5

    :cond_12
    :goto_3
    if-eqz v3, :cond_13

    const/4 v0, 0x3

    .line 1390
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    .line 1391
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v3, 0x66

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(II)V

    goto :goto_4

    .line 1393
    :cond_13
    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    .line 1394
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(II)V

    .line 1397
    :goto_4
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_14

    .line 1398
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->endAnimation()V

    .line 1406
    :cond_14
    :goto_5
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current window mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (1:home, 2:app, 3:recent-task, 4:keyguard)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->startVelocityTracker(Landroid/view/MotionEvent;)V

    .line 1410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v2, v0, :cond_15

    .line 1411
    iput-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsInFsMode:Z

    .line 1413
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateMotionEventVelocity(Landroid/view/MotionEvent;)V

    .line 1414
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->stopVelocityTracker()V

    .line 1417
    :cond_15
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    packed-switch v0, :pswitch_data_0

    .line 1438
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsInFsMode:Z

    goto :goto_6

    .line 1434
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->assistantTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_6

    .line 1431
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->quickSwitchTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_6

    .line 1428
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->keyguardTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_6

    .line 1425
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->recentsTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_6

    .line 1419
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->appTouchResolutionForVersionTwo(Landroid/view/MotionEvent;)V

    goto :goto_6

    .line 1422
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->homeTouchResolution(Landroid/view/MotionEvent;)V

    :goto_6
    return v1

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 1538
    iget-object v0, p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mInimizedHomeBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1539
    iget-object v0, p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mInimizedHomeBounds:Landroid/graphics/Rect;

    goto/16 :goto_2

    .line 1541
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    .line 1542
    new-array v3, v3, [I

    .line 1543
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1544
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1546
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscape()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1547
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1548
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 1550
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1551
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1554
    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    aget v6, v3, v2

    aget v7, v3, v1

    aget v8, v3, v2

    add-int/2addr v8, v4

    aget v3, v3, v1

    add-int/2addr v3, v0

    invoke-direct {v5, v6, v7, v8, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v5

    goto :goto_2

    .line 1557
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1558
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1559
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    .line 1561
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1562
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1564
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v4

    .line 1568
    :goto_2
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {p1, v4}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->findRemoteAnimationTargetCompat(I)Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSource(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 1569
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscape()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1570
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateStackBoundsToMultiWindowTaskSize(Landroid/content/Context;)V

    .line 1572
    :cond_4
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {p1, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 1574
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 1575
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1576
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_4

    .line 1577
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1578
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 1580
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1581
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1582
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_3

    .line 1584
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1585
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1587
    :goto_3
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 1588
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

    .line 1590
    :cond_7
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_b

    .line 1592
    :cond_8
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->getTaskStackViewLayoutStyle(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    .line 1591
    invoke-static {p1, v0, v3}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->create(ILandroid/content/Context;Lcom/miui/home/recents/views/TaskStackViewScroller$TaskStackViewScrollerCallback;)Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object p1

    .line 1593
    invoke-virtual {p1}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getTaskStackLayoutAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v0

    .line 1594
    invoke-virtual {p1}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getStyleValue()I

    move-result p1

    if-nez p1, :cond_9

    move p1, v1

    goto :goto_5

    :cond_9
    move p1, v2

    :goto_5
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsTaskStackLayoutStyleVertical:Z

    .line 1595
    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    .line 1596
    new-instance p1, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v4

    invoke-direct {p1, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1597
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->initTaskRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1598
    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 1600
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscape()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1601
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1602
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_6

    .line 1604
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1605
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1607
    :goto_6
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 1608
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getRecentsTaskViewHeaderHeight()I

    move-result v0

    sub-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 1610
    :cond_b
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 1612
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz p1, :cond_c

    .line 1613
    iput-boolean v1, p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    .line 1614
    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->hideCurrentInputMethod()V

    .line 1616
    :cond_c
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->switchToScreenshot()V

    return-void
.end method

.method public onSystemUiFlagsChanged(I)V
    .locals 3

    .line 1153
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

    .line 1154
    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowStatusBar:Z

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1156
    :goto_1
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsShowNavBar:Z

    if-eq p1, v1, :cond_2

    .line 1157
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsShowNavBar:Z

    .line 1158
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->requestApplyInsets()V

    .line 1159
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSystemUiFlagsChanged  mIsShowNavBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsShowNavBar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onTaskAppeared(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 1

    .line 1626
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1627
    invoke-virtual {p1, v0, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishControllerAsync(ZZ)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1176
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mDisableTouch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1182
    :cond_0
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    .line 1183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    .line 1184
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v2, :cond_1

    return v1

    .line 1190
    :cond_1
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    invoke-direct {p0, v0, v2}, Lcom/miui/home/recents/NavStubView;->ignoreTouchPosition(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    .line 1192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    .line 1195
    :cond_2
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v0

    const/16 v2, 0x3e8

    invoke-virtual {v0, p1, v2}, Lcom/miui/home/library/utils/CPUBooster;->boostTouch(Landroid/view/MotionEvent;I)V

    .line 1197
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    const/16 v2, 0xff

    const/16 v3, 0x102

    const-wide/16 v4, 0x12c

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 1221
    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mInitY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v0

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mInitX:F

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v4, v0

    if-gez v0, :cond_3

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mInitX:F

    sub-float/2addr v0, v4

    .line 1222
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mTouchSlop:I

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetStatus:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mSupportHorizontalGesture:Z

    if-nez v0, :cond_3

    .line 1226
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView$H;->sendMessage(Landroid/os/Message;)Z

    .line 1228
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v2, "h-slide detected, sendMessage MSG_SET_GESTURE_STUB_UNTOUCHABLE"

    invoke-static {v0, v2}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1231
    :cond_3
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetStatus:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mInitY:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mInitX:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    sub-float/2addr v0, v2

    .line 1232
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_9

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mSupportHorizontalGesture:Z

    if-eqz v0, :cond_9

    .line 1233
    :cond_4
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-nez v0, :cond_9

    .line 1234
    iput-boolean v6, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    .line 1235
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->exitFreeFormWindowIfNeeded()V

    .line 1236
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->clearMessages()V

    .line 1237
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1238
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1239
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v2, v3, v0}, Lcom/miui/home/recents/NavStubView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1241
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v2, v0}, Lcom/miui/home/recents/NavStubView$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1243
    :cond_5
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_0

    .line 1251
    :pswitch_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_6

    return v6

    .line 1256
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    .line 1259
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v4, v7, v4

    if-gez v4, :cond_7

    iget-boolean v4, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-nez v4, :cond_7

    .line 1261
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->clearMessages()V

    .line 1263
    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float/2addr v4, v5

    .line 1264
    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    sub-float/2addr v5, v0

    .line 1266
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-nez v0, :cond_7

    .line 1267
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v7, 0x41f00000    # 30.0f

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_7

    .line 1268
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_7

    .line 1269
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView$H;->sendMessage(Landroid/os/Message;)Z

    .line 1272
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currTime - mDownTime < MSG_CHECK_GESTURE_STUB_TOUCHABLE_TIMEOUT updateViewLayout UnTouchable, diffX:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " diffY:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    :cond_7
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_UP: mIsGestureStarted: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    goto :goto_0

    .line 1199
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mInitX:F

    .line 1200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mInitY:F

    .line 1201
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_8

    .line 1202
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 1203
    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 1205
    :cond_8
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 1206
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    xor-int/2addr v0, v6

    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mSupportHorizontalGesture:Z

    .line 1209
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView$H;->removeMessages(I)V

    .line 1210
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    .line 1211
    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1210
    invoke-virtual {v0, v2, v4, v5}, Lcom/miui/home/recents/NavStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1215
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v2, "onTouch ACTION_DOWN sendMessageDelayed MSG_CHECK_GESTURE_STUB_TOUCHABLE"

    invoke-static {v0, v2}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_9
    :goto_0
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetStatus:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    if-eq v0, v6, :cond_a

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    .line 1291
    :cond_a
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1292
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v0, v3, p1}, Lcom/miui/home/recents/NavStubView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1294
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/NavStubView$H;->sendMessage(Landroid/os/Message;)Z

    return v6

    :cond_b
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

    .line 2708
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "performAppToApp"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelOnHandSpringAnim()V

    .line 2710
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mOnHandValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 2711
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-boolean v0, v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    if-eq p1, v0, :cond_1

    sub-int/2addr p1, v0

    .line 2713
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->showRecents()V

    .line 2714
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    add-int/2addr v0, p1

    .line 2715
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2716
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/TaskStack;->getTaskCount()I

    move-result p1

    .line 2717
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2719
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->performAppToApp(I)V

    return-void

    .line 2723
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/miui/home/recents/NavStubView;->updateSysUiFlags(FI)V

    .line 2724
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    sub-int v0, p1, v0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    .line 2726
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 2728
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v5, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 2730
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    iget v7, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v3, v0

    move v6, v7

    invoke-direct/range {v3 .. v9}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 2731
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {p0, v0, v2}, Lcom/miui/home/recents/NavStubView;->setAnimVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;I)V

    .line 2733
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v3, 0x3e4ccccd    # 0.2f

    const v4, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v1, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2734
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0, v1, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2735
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0, v1, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2736
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0, v1, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2738
    iget v8, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    .line 2740
    iget v9, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    .line 2741
    iget v10, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    .line 2742
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$YVSIq2kC5365A0o1W3RHFUuhW-A;

    move-object v5, v1

    move-object v6, p0

    move v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/miui/home/recents/-$$Lambda$NavStubView$YVSIq2kC5365A0o1W3RHFUuhW-A;-><init>(Lcom/miui/home/recents/NavStubView;IIFF)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 2771
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v1, Lcom/miui/home/recents/NavStubView$21;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/NavStubView$21;-><init>(Lcom/miui/home/recents/NavStubView;I)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2801
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->start()V

    .line 2802
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2803
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    .line 2804
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskIdFromStackIndex(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskId:I

    :cond_2
    const-string p1, "performAppToApp"

    .line 2806
    invoke-direct {p0, v2, v2, v2, p1}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    return-void
.end method

.method public performAppToHome()V
    .locals 1

    const/4 v0, 0x0

    .line 2263
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->performAppToHome(Z)V

    return-void
.end method

.method public performAppToHome(Z)V
    .locals 11

    .line 2267
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "performAppToHome"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelOnHandSpringAnim()V

    .line 2269
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mOnHandValueHolder:Landroidx/dynamicanimation/animation/FloatValueHolder;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 2270
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-boolean v0, v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_6

    .line 2272
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentActivityStarted:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2273
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->hideLandscapeShortcutMenuLayer()V

    .line 2275
    :cond_0
    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    iget v6, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    iget v7, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRatio:F

    iget v8, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    iget v9, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    .line 2277
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskAlpha:F

    :goto_0
    move v10, v0

    move-object v3, p0

    .line 2275
    invoke-direct/range {v3 .. v10}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(FFFFFFF)Landroid/graphics/RectF;

    move-result-object v0

    .line 2278
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v3

    invoke-static {v3, v2, v0}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 2280
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2281
    invoke-direct {p0, v3}, Lcom/miui/home/recents/NavStubView;->findClosingShortcutIcon(Landroid/graphics/Rect;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v4

    .line 2283
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/home/recents/NavStubView;->mCloseScreenshotIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2284
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "toHome"

    const-string v7, "gesture"

    invoke-static {v5, v6, v7}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2286
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getmHomeFeedContainer()Lcom/miui/home/launcher/view/HomeFeedContainer;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 2287
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getmHomeFeedContainer()Lcom/miui/home/launcher/view/HomeFeedContainer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/miui/home/launcher/view/HomeFeedContainer;->performAppToHome(Z)V

    .line 2289
    :cond_2
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v5

    sget-object v6, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    if-ne v5, v6, :cond_3

    .line 2290
    sget-object v5, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewBackgroundAnim:Z

    .line 2291
    sget-object v5, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    iput-boolean v6, v5, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    .line 2292
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v5

    invoke-virtual {v5, v6, v6}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    .line 2293
    sget-object v5, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    iput-boolean v2, v5, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewBackgroundAnim:Z

    .line 2294
    sget-object v5, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    iput-boolean v2, v5, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    goto :goto_1

    .line 2296
    :cond_3
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mCurShortcutMenuLayerScale:F

    const/high16 v5, 0x43fa0000    # 500.0f

    .line 2298
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result v6

    mul-float/2addr v6, v5

    float-to-long v5, v6

    .line 2297
    invoke-virtual {p0, v5, v6}, Lcom/miui/home/recents/NavStubView;->startHomeFadeInAnim(J)V

    .line 2301
    :goto_1
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v5

    const/4 v6, -0x1

    if-eqz v5, :cond_4

    .line 2302
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    .line 2305
    :cond_4
    iget-boolean v5, p0, Lcom/miui/home/recents/NavStubView;->mIsShowStatusBar:Z

    if-eqz v5, :cond_5

    .line 2306
    invoke-direct {p0, v1, v6}, Lcom/miui/home/recents/NavStubView;->updateSysUiFlagsDirectly(FI)V

    .line 2308
    :cond_5
    invoke-virtual {p0, v4, v0, v3}, Lcom/miui/home/recents/NavStubView;->startAppToHomeAnim(Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    const-string v0, "performAppToHome"

    .line 2309
    invoke-direct {p0, v2, v2, v2, v0}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    .line 2311
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->hideTaskView(Z)V

    goto :goto_2

    .line 2313
    :cond_6
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty()V

    const-string p1, "appTouchResolution2"

    .line 2314
    invoke-direct {p0, v2, v2, v2, p1}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public performAppToRecents()V
    .locals 1

    const/4 v0, 0x1

    .line 2531
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->performAppToRecents(Z)V

    return-void
.end method

.method public performAppToRecents(Z)V
    .locals 8

    .line 2535
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "performAppToRecents"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 2536
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mOnHandHapticFeedRan:Z

    if-nez v0, :cond_0

    .line 2537
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterRecent(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 2538
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mOnHandHapticFeedRan:Z

    .line 2540
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-boolean v0, v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    if-nez v0, :cond_1

    .line 2541
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performAppToHome()V

    return-void

    .line 2544
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-boolean v0, v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mIsStart:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2545
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mCloseScreenshotIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2546
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "toRecents"

    const-string v2, "gesture"

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 2549
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterRecent(Landroid/view/View;)V

    :cond_2
    const-string p1, "performAppToRecents"

    const/4 v0, 0x0

    .line 2552
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    .line 2553
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    .line 2554
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    .line 2555
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/home/recents/views/TaskStackView;->updateToTaskViewPosition(ZII)V

    .line 2557
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(I)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTargetTaskRectF:Landroid/graphics/RectF;

    .line 2558
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mTargetTaskRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    const/4 v0, 0x0

    .line 2561
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mTargetTaskRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2562
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewRadius:F

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mTargetTaskRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    move v5, v0

    goto :goto_0

    :cond_3
    move v5, v0

    .line 2564
    :goto_0
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mTargetTaskRectF:Landroid/graphics/RectF;

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 2565
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v2, 0x3ecccccd    # 0.4f

    const v3, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2566
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2567
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2568
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2569
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perform app to recents, mCurRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTargetTaskRectF="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mTargetTaskRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ad(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    .line 2573
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$NavStubView$wrNdlLRomcY_3Ci4ND2wdzv5vqM;

    invoke-direct {v2, p0, p1, v0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$wrNdlLRomcY_3Ci4ND2wdzv5vqM;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskStackView;Lcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 2599
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v1, Lcom/miui/home/recents/NavStubView$20;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/recents/NavStubView$20;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2630
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->start()V

    .line 2632
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetTaskView()V

    goto :goto_1

    .line 2634
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performAppToHome()V

    :goto_1
    return-void
.end method

.method public performRecentsRest()V
    .locals 3

    .line 3260
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "performRecentsRest"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "toRecents"

    const-string v2, "gesture"

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3265
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3266
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startFsRecentsResetAnim(Lcom/miui/home/recents/views/RecentsView;)V

    :cond_0
    return-void
.end method

.method public performRecentsToHome()V
    .locals 3

    .line 3247
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "performRecentsToHome"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "toHome"

    const-string v2, "gesture"

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3251
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mCloseScreenshotIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3253
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3254
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    :cond_0
    const-string v0, "performRecentsToHome"

    .line 3256
    invoke-direct {p0, v1, v1, v1, v0}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    return-void
.end method

.method postStartNewTaskRunnable()V
    .locals 3

    .line 2825
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartNewTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2826
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartNewTaskRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/recents/NavStubView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public sendEvent(III)V
    .locals 6

    .line 3304
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

    .line 3309
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

    :try_start_0
    const-string v0, "android.hardware.input.InputManager"

    .line 3315
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getInstance"

    .line 3316
    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    .line 3317
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3320
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

    .line 3321
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

    .line 3323
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setHideGestureLine(Z)V
    .locals 2

    .line 1164
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    .line 1165
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHideGestureLine   mHideGestureLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getHotSpaceHeight()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateViewLayout(I)V

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 3648
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1093
    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mKeepHidden:Z

    .line 1094
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mKeepHidden:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    .line 1095
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1096
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz p1, :cond_2

    .line 1097
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    const/4 p1, 0x0

    .line 1098
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    goto :goto_1

    .line 1101
    :cond_1
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public startAppToHomeAnim(Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p3

    .line 2368
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v2, "startAppToHomeAnim"

    invoke-static {v0, v2}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    invoke-direct {p0, v1}, Lcom/miui/home/recents/NavStubView;->isInvalidRectF(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->isInvalidRectF(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz v8, :cond_2

    .line 2377
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/ShortcutIcon;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2378
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconTransparentEdge()I

    move-result v0

    .line 2379
    invoke-virtual {v9, v0, v0}, Landroid/graphics/Rect;->inset(II)V

    goto :goto_0

    :cond_1
    return-void

    .line 2385
    :cond_2
    :goto_0
    iget-boolean v0, v7, Lcom/miui/home/recents/NavStubView;->mIsVertical:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 2386
    invoke-virtual {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    move v10, v0

    goto :goto_1

    :cond_3
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 2387
    invoke-virtual {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    move v10, v0

    :goto_1
    const/4 v0, 0x0

    .line 2389
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_5

    if-eqz v8, :cond_4

    .line 2391
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconRadius()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v10

    move v4, v0

    goto :goto_2

    .line 2393
    :cond_4
    iget v0, v7, Lcom/miui/home/recents/NavStubView;->mNoIconRadius:I

    int-to-float v0, v0

    mul-float/2addr v0, v10

    move v4, v0

    goto :goto_2

    :cond_5
    move v4, v0

    :goto_2
    if-eqz v8, :cond_6

    .line 2397
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v2, 0x0

    .line 2398
    invoke-static {v0, v8, v2}, Lcom/miui/home/recents/views/FloatingIconView;->getFloatingIconView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutIcon;Z)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    move-object v11, v0

    .line 2400
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 2401
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    .line 2403
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v12

    .line 2404
    new-instance v13, Lcom/miui/home/recents/util/RectFSpringAnim;

    iget v3, v7, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    iput-object v13, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 2405
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {p0, v0, v12}, Lcom/miui/home/recents/NavStubView;->setAnimVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;I)V

    .line 2407
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v2, 0x3ed70a3d    # 0.42f

    const v3, 0x3f733333    # 0.95f

    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2408
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0, v1, v3, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2409
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v4, 0x3f666666    # 0.9f

    const v5, 0x3ee66666    # 0.45f

    invoke-virtual {v0, v1, v4, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2410
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v1, v5, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2411
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v4, 0x3ebd70a4    # 0.37f

    invoke-virtual {v0, v1, v3, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2412
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v1, Lcom/miui/home/recents/util/RectFSpringAnim;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0, v1, v5, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2414
    iget-object v13, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v14, Lcom/miui/home/recents/-$$Lambda$NavStubView$ekiQq9nBJuOE5h1JiMCQOHVB5Jo;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move v3, v12

    move-object v4, v11

    move-object/from16 v5, p3

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/-$$Lambda$NavStubView$ekiQq9nBJuOE5h1JiMCQOHVB5Jo;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;ILcom/miui/home/recents/views/FloatingIconView;Landroid/graphics/Rect;F)V

    invoke-virtual {v13, v14}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    if-eqz v11, :cond_7

    .line 2453
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0, v11}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 2455
    :cond_7
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v1, Lcom/miui/home/recents/NavStubView$18;

    invoke-direct {v1, p0, v8, v11}, Lcom/miui/home/recents/NavStubView$18;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/recents/views/FloatingIconView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 2505
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->start()V

    return-void

    .line 2370
    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->finishAppToHome()V

    .line 2371
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAppToHomeAnim error: startRect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "   targetRect="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startBreakOpenRectFAnim()V
    .locals 10

    .line 2097
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/home/recents/LauncherAppTransitionManager;->mRectFSpringAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_0

    .line 2099
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v8

    .line 2100
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getCurRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 2101
    new-instance v9, Lcom/miui/home/recents/util/RectFSpringAnim;

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, v9

    move-object v2, v8

    move v4, v5

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    iput-object v9, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 2103
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v3, 0x3e4ccccd    # 0.2f

    const v4, 0x3f7d70a4    # 0.99f

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2104
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2105
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2106
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2107
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2108
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2109
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 2111
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$6C0vZ9anbQmBpmv_BOLvfDFYU_0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$6C0vZ9anbQmBpmv_BOLvfDFYU_0;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 2112
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v1, Lcom/miui/home/recents/NavStubView$16;

    invoke-direct {v1, p0, v8}, Lcom/miui/home/recents/NavStubView$16;-><init>(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2124
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    const v1, 0x3da3d70a    # 0.08f

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setMinimumVisibleChange(FFFF)V

    .line 2125
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->start()V

    .line 2128
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->finishBreakOpenAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startFirstTask()V
    .locals 11

    .line 2866
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "startFirstTask"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2872
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 2873
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->finishPendingController()V

    .line 2875
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 2876
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 2877
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

    .line 2886
    :cond_1
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 2887
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    add-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 2889
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    iget v8, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v4, v0

    move v7, v8

    invoke-direct/range {v4 .. v10}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 2890
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {p0, v0, v3}, Lcom/miui/home/recents/NavStubView;->setAnimVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;I)V

    .line 2892
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v2, v5, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2893
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0, v2, v5, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2894
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0, v2, v5, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2895
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0, v2, v5, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2897
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    .line 2898
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    .line 2899
    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v5, Lcom/miui/home/recents/-$$Lambda$NavStubView$lZpRlKAwtVKQO57CuBtW3YPlJgA;

    invoke-direct {v5, p0, v0, v2}, Lcom/miui/home/recents/-$$Lambda$NavStubView$lZpRlKAwtVKQO57CuBtW3YPlJgA;-><init>(Lcom/miui/home/recents/NavStubView;FF)V

    invoke-virtual {v4, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 2906
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v2, Lcom/miui/home/recents/NavStubView$23;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$23;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2933
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->start()V

    .line 2935
    iput v3, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    .line 2936
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/views/RecentsView;->getTaskIdByIndex(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskId:I

    const-string v0, "startFirstTask"

    .line 2938
    invoke-direct {p0, v3, v3, v1, v0}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    goto :goto_2

    .line 2878
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 2879
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->startHomeAnimation(I)V

    goto :goto_1

    .line 2881
    :cond_3
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/NavStubView;->startHomeAnimation(I)V

    :goto_1
    return-void

    .line 2940
    :cond_4
    invoke-virtual {p0, v2}, Lcom/miui/home/recents/NavStubView;->startHomeAnimation(I)V

    const-string v0, "startFirstTask"

    .line 2941
    invoke-direct {p0, v3, v3, v1, v0}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public startHomeAnimation(I)V
    .locals 13

    .line 3414
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startHomeAnimation: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 3416
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3417
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3420
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3421
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const-wide/16 v0, 0xc8

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x2

    if-ne p1, v5, :cond_3

    .line 3425
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->startRecentsFadeOutAnim()V

    .line 3426
    iget-object v6, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->isShouldBlur()Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v2

    :goto_0
    invoke-direct {p0, v6}, Lcom/miui/home/recents/NavStubView;->startBlurAnim(F)V

    .line 3427
    iget-object v6, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v7, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v7}, Lcom/miui/home/launcher/LauncherState;->getOverviewBackgroundAlpha()F

    move-result v7

    invoke-virtual {v6, v7, v0, v1}, Lcom/miui/home/launcher/Launcher;->updateOverviewBackgroundAlpha(FJ)V

    .line 3428
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "toHome"

    const-string v8, "gesture"

    invoke-static {v6, v7, v8}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-ne p1, v3, :cond_4

    .line 3431
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetTaskView()V

    .line 3432
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "toRecents"

    const-string v8, "gesture"

    invoke-static {v6, v7, v8}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3436
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getAlpha()F

    move-result v9

    .line 3437
    iget-object v6, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v6}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getScaleX()F

    move-result v11

    if-ne p1, v5, :cond_5

    move v10, v4

    goto :goto_2

    :cond_5
    move v10, v2

    :goto_2
    if-ne p1, v5, :cond_6

    move v12, v4

    goto :goto_3

    :cond_6
    const v2, 0x3f4ccccd    # 0.8f

    move v12, v2

    :goto_3
    if-ne p1, v3, :cond_7

    const/high16 v0, 0x43480000    # 200.0f

    sub-float v1, v10, v9

    .line 3442
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v1, v0

    float-to-long v0, v1

    .line 3445
    :cond_7
    new-array v2, v5, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 3446
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3447
    new-instance v3, Lcom/miui/home/recents/NavStubView$25;

    move-object v7, v3

    move-object v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/miui/home/recents/NavStubView$25;-><init>(Lcom/miui/home/recents/NavStubView;FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3456
    new-instance v3, Lcom/miui/home/recents/NavStubView$26;

    invoke-direct {v3, p0, p1}, Lcom/miui/home/recents/NavStubView$26;-><init>(Lcom/miui/home/recents/NavStubView;I)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3480
    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startHomeFadeInAnim(J)V
    .locals 4

    .line 398
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "startHomeFadeInAnim"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 400
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    .line 401
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    const v2, 0x3f7d70a4    # 0.99f

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 402
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 403
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 404
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/home/recents/NavStubView$4;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/NavStubView$4;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 414
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 415
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 417
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 418
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isShouldBlur()Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->startBlurAnim(F)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startHomeFadeOutAnim()V
    .locals 4

    .line 422
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "startHomeFadeOutAnim"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 424
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 425
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/miui/home/launcher/anim/Interpolators;->CUBIC_EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 426
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 427
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/recents/NavStubView$5;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$5;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 438
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/recents/NavStubView$6;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$6;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mCurShortcutMenuLayerScale:F

    aput v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x3f4ccccd    # 0.8f

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 455
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 456
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->startBlurAnim(F)V

    return-void
.end method

.method public startRecentsFadeOutAnim()V
    .locals 9

    .line 467
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "startRecentsFadeOutAnim"

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    if-eqz v0, :cond_0

    .line 469
    new-instance v2, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v3, -0x1

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v6

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v7

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZFFLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public startRecentsStateHomeAnim(Z)V
    .locals 3

    .line 3225
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecentsStateHomeAnim: show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-wide/16 v0, 0xfa

    .line 3228
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->startHomeFadeInAnim(J)V

    goto :goto_0

    .line 3230
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->startHomeFadeOutAnim()V

    :goto_0
    return-void
.end method

.method public startRecentsStateRecentsAnim(Z)V
    .locals 3

    .line 3235
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecentsStateRecentsAnim: show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/recents/NavStubView$_lancet;->com_miui_home_launcher_aop_LogHooker_ae(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3239
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startToRecentsAnim(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3241
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

.method public startTailCatcher()V
    .locals 2

    .line 3271
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

    .line 1718
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mGestureLineProgress:F

    .line 1719
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mGestureLineProgress:F

    invoke-virtual {p1, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mGestureLineProgress:F

    .line 1720
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/miui/home/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mUpdateGestureLineProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1721
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/launcher/util/LooperExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mUpdateGestureLineProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updatePivotLoc(Landroid/view/MotionEvent;)V
    .locals 4

    .line 3275
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

    .line 3276
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

    .line 3277
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result p1

    .line 3278
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsSafeArea:Z

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 3280
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "crossSafeArea"

    const-string v2, "gesture"

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3282
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3283
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterRecent(Landroid/view/View;)V

    .line 3286
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsSafeArea:Z

    :cond_1
    return-void
.end method
.method public sendFakeEvent()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/MyTaskStackView;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/MyTaskStackView;->fakeEventWithDelay()V

    return-void
.end method
