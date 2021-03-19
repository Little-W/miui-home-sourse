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

.field private mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field private mCancelAppToAppAnim:Z

.field private mCancelFakeAppToHomeAnim:Z

.field private mCancelRecentsAnimationRunnable:Ljava/lang/Runnable;

.field private final mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

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

.field private mFakeAppToHomeAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

.field private mFollowTailDistance:F

.field private mFollowTailX:F

.field private mFollowTailXDelta:F

.field private mFollowTailY:F

.field private mFollowTailYDelta:F

.field private mFrameHandler:Landroid/os/Handler;

.field mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

.field private mFullScreenModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mGestureLineProgress:F

.field private mGoToNormalStartRunnable:Ljava/lang/Runnable;

.field private mHandler:Lcom/miui/home/recents/NavStubView$H;

.field private mHideGestureLine:Z

.field private mHomeFadeInAnim:Landroid/animation/ValueAnimator;

.field private mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

.field private mHomeIntent:Landroid/content/Intent;

.field mHomeModeTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final mHomeTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field private mHorizontalActiveArea:[F

.field private mHorizontalGap:F

.field private mIgnoreInputConsumer:Z

.field private mInitX:F

.field private mInitY:F

.field private mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

.field private mIsAnimatingToLauncher:Z

.field private mIsAnimatingToRecents:Z

.field mIsAppHold:Z

.field private mIsCancelBreakOpenAnim:Z

.field private mIsDarkMode:Z

.field private mIsFullScreenMode:Z

.field private mIsGestureStarted:Z

.field private mIsInFsMode:Z

.field private mIsInitFloatingIconLayer:Z

.field private mIsQuickSwitching:Z

.field private mIsResetTaskView:Z

.field private mIsSafeArea:Z

.field private mIsShowNavBar:Z

.field private mIsShowRecents:Z

.field private mIsShowStatusBar:Z

.field private mIsVertical:Z

.field private mKeepHidden:Z

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mLastDownNo:I

.field private mLastTouchTime:J

.field mLastVelocity:F

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLocation:[I

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMatrixArray:[F

.field private mMinRectWidth:F

.field private mModeGesture:Lcom/miui/home/recents/NavStubView$ModeGesture;

.field private mNeedBreakOpenAnim:Z

.field private mNeedCreateDimLayer:Z

.field private mNoIconRadius:I

.field private mPendingResetStatus:Z

.field private mPendingResetTaskView:Z

.field private mPer:F

.field private mPivotLocX:I

.field private mPivotLocY:I

.field private mQueryTaskSupportSmallWindowState:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

.field private mQuickSwitchTaskId:I

.field private mQuickSwitchTaskIndex:I

.field public mReLoadTaskFinished:Z

.field private mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

.field mRecentsViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field mRemoveSmallViewRunnable:Ljava/lang/Runnable;

.field private mResponseOffset:F

.field private mRunningTaskComponentName:Landroid/content/ComponentName;

.field private mRunningTaskId:I

.field private mRunningTaskIndex:I

.field mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field private mRunningTaskUserId:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSmallWindowCropHandler:Landroid/os/Handler;

.field private mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

.field private mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

.field mStartNewTaskRunnable:Ljava/lang/Runnable;

.field private mStartRecentsAnimationRunnable:Ljava/lang/Runnable;

.field mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

.field mSupportHorizontalGesture:Z

.field private mSystemUiFlags:I

.field private mTailCatcherTask:Ljava/lang/Runnable;

.field mTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mTaskViewInitRect:Landroid/graphics/Rect;

.field private mTaskViewRadius:F

.field private mTaskViewWidth:F

.field private mTaskViewX:F

.field private mTouchSlop:I

.field private final mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

.field mUpdateGestureLineProgressRunnable:Ljava/lang/Runnable;

.field private mVelocityPxPerMs:Landroid/graphics/PointF;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowMode:I

.field private onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/recents/NavStubView;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    .line 192
    sget-object v0, Lcom/miui/home/recents/NavStubView;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    const-string v1, "perseus"

    const/high16 v2, 0x40900000    # 4.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/miui/home/recents/NavStubView;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    const-string v1, "cepheus"

    const v2, 0x40666666    # 3.6f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/miui/home/recents/NavStubView;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    const-string v1, "dipper"

    const v3, 0x40cccccd    # 6.4f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/miui/home/recents/NavStubView;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    const-string v1, "grus"

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 682
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFrameHandler:Landroid/os/Handler;

    .line 180
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLastConfiguration:Landroid/content/res/Configuration;

    const/4 v0, -0x1

    .line 211
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    const/4 v0, 0x2

    .line 224
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLocation:[I

    .line 231
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalActiveArea:[F

    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowStatusBar:Z

    const/4 v1, 0x0

    .line 250
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mSystemUiFlags:I

    .line 255
    sget-object v2, Lcom/miui/home/recents/NavStubView$ModeGesture;->IDLE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mModeGesture:Lcom/miui/home/recents/NavStubView$ModeGesture;

    .line 270
    new-instance v2, Lcom/miui/home/recents/NavStubView$1;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$1;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mTailCatcherTask:Ljava/lang/Runnable;

    .line 868
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mLastDownNo:I

    .line 870
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mDownNo:I

    .line 1379
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mSupportHorizontalGesture:Z

    .line 1387
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    .line 1391
    new-instance v2, Landroid/graphics/PointF;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    const/high16 v2, 0x420c0000    # 35.0f

    .line 1409
    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const v2, 0x3d4ccccd    # 0.05f

    .line 1410
    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mResponseOffset:F

    const/16 v2, 0x14

    .line 1412
    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mNoIconRadius:I

    .line 1415
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    .line 1430
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 1432
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetTaskView:Z

    .line 1617
    new-instance v2, Lcom/miui/home/recents/NavStubView$5;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$5;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mUpdateGestureLineProgressRunnable:Ljava/lang/Runnable;

    .line 1776
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mMatrix:Landroid/graphics/Matrix;

    const/16 v2, 0x9

    .line 1777
    new-array v2, v2, [F

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mMatrixArray:[F

    const/4 v2, 0x4

    .line 1778
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCropArray:[I

    .line 1780
    new-instance v2, Lcom/miui/home/recents/-$$Lambda$NavStubView$p3JVQ-HRYtKgj0GDYU6Gs6hRTV8;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$p3JVQ-HRYtKgj0GDYU6Gs6hRTV8;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mStartRecentsAnimationRunnable:Ljava/lang/Runnable;

    .line 1816
    sget-object v2, Lcom/miui/home/recents/-$$Lambda$NavStubView$2M8WW54aNVJDbw603p_PhD8OJrs;->INSTANCE:Lcom/miui/home/recents/-$$Lambda$NavStubView$2M8WW54aNVJDbw603p_PhD8OJrs;

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCancelRecentsAnimationRunnable:Ljava/lang/Runnable;

    .line 1871
    new-instance v2, Lcom/miui/home/recents/NavStubView$6;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$6;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1899
    new-instance v2, Lcom/miui/home/recents/NavStubView$7;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$7;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRecentsViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1951
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    .line 2112
    new-instance v2, Lcom/miui/home/recents/NavStubView$10;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$10;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->finishBreakOpenAnimRunnable:Ljava/lang/Runnable;

    .line 2337
    new-instance v2, Lcom/miui/home/recents/-$$Lambda$NavStubView$0_Ve7GoF27ujHmZKNsojy53pmIg;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$0_Ve7GoF27ujHmZKNsojy53pmIg;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mGoToNormalStartRunnable:Ljava/lang/Runnable;

    .line 2856
    new-instance v2, Lcom/miui/home/recents/NavStubView$14;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$14;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mEnterRecentsRunnale:Ljava/lang/Runnable;

    .line 3070
    new-instance v2, Lcom/miui/home/recents/NavStubView$16;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$16;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mStartNewTaskRunnable:Ljava/lang/Runnable;

    .line 3108
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mDisableUpdateStatusBarClock:Z

    .line 3120
    new-instance v2, Lcom/miui/home/recents/-$$Lambda$NavStubView$9En0CkR0L3YBWgcXJD7xrhxLxKA;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$9En0CkR0L3YBWgcXJD7xrhxLxKA;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->enableUpdateStatusBarClockRunnable:Ljava/lang/Runnable;

    .line 3283
    new-instance v2, Lcom/miui/home/recents/NavStubView$18;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$18;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mFullScreenModeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 3339
    new-instance v2, Lcom/miui/home/recents/-$$Lambda$NavStubView$bgOGYPF5MkOqOgG_kf53TsEbRKY;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$bgOGYPF5MkOqOgG_kf53TsEbRKY;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHomeModeTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 3983
    sget-object v2, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;->IDLE:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mQueryTaskSupportSmallWindowState:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    .line 4048
    new-instance v2, Lcom/miui/home/recents/NavStubView$22;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/NavStubView$22;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRemoveSmallViewRunnable:Ljava/lang/Runnable;

    .line 683
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    .line 685
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 686
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 687
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    .line 688
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    .line 690
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    .line 691
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 692
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 693
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 694
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    .line 696
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 697
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 698
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    .line 700
    new-instance v2, Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-direct {v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 701
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v2, v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->setIsUseForHomeGesture(Z)V

    .line 702
    new-instance v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 703
    new-instance v2, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-direct {v2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHomeTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 705
    new-instance v2, Lcom/miui/home/recents/NavStubView$H;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/home/recents/NavStubView$H;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/NavStubView$1;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    .line 706
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mTouchSlop:I

    const/16 v2, 0x8

    .line 707
    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mTouchSlop:I

    .line 709
    new-instance v2, Lcom/miui/home/recents/AntiMistakeTouchView;

    invoke-direct {v2, p1}, Lcom/miui/home/recents/AntiMistakeTouchView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    .line 710
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    invoke-virtual {v2}, Lcom/miui/home/recents/AntiMistakeTouchView;->getFrameLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/miui/home/recents/NavStubView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 712
    new-instance v2, Lcom/miui/home/recents/GestureStateMachine;

    const-string v4, "GestureStateMachine"

    invoke-direct {v2, v4, p0}, Lcom/miui/home/recents/GestureStateMachine;-><init>(Ljava/lang/String;Lcom/miui/home/recents/NavStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    .line 713
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/home/recents/util/Utilities;->getTaskViewCornerRadius(Landroid/content/Context;)F

    move-result v2

    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewRadius:F

    .line 715
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v2

    .line 716
    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalActiveArea:[F

    int-to-float v2, v2

    const/high16 v5, 0x3e800000    # 0.25f

    mul-float/2addr v5, v2

    aput v5, v4, v1

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v2, v1

    .line 717
    aput v2, v4, v0

    .line 719
    new-instance v0, Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-direct {v0, p1}, Lcom/miui/home/recents/FsGestureAssistHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

    .line 721
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00b3

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    .line 722
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->isInDarkMode(Landroid/content/res/Configuration;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsDarkMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 132
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailX:F

    return p0
.end method

.method static synthetic access$102(Lcom/miui/home/recents/NavStubView;F)F
    .locals 0

    .line 132
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailX:F

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowNavBar:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/miui/home/recents/NavStubView;)[F
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalActiveArea:[F

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/home/recents/NavStubView;)Landroid/view/MotionEvent;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/miui/home/recents/NavStubView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 132
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    return p0
.end method

.method static synthetic access$1600(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 132
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    return p0
.end method

.method static synthetic access$1700(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/NavStubView$H;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->disableTouch(Z)V

    return-void
.end method

.method static synthetic access$1902(Lcom/miui/home/recents/NavStubView;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetStatus:Z

    return p1
.end method

.method static synthetic access$200(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 132
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mPivotLocX:I

    return p0
.end method

.method static synthetic access$2000(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 132
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    return p0
.end method

.method static synthetic access$2100(Lcom/miui/home/recents/NavStubView;I)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->injectMotionEvent(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 132
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    return p0
.end method

.method static synthetic access$2300(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 132
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    return p0
.end method

.method static synthetic access$2400(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 132
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    return p0
.end method

.method static synthetic access$2402(Lcom/miui/home/recents/NavStubView;I)I
    .locals 0

    .line 132
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    return p1
.end method

.method static synthetic access$2500(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 132
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    return p0
.end method

.method static synthetic access$2600(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->useHorizontalStyleToInitTaskView()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2700(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;Z)V
    .locals 0

    .line 132
    invoke-direct/range {p0 .. p10}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 132
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailY:F

    return p0
.end method

.method static synthetic access$3000(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 132
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mGestureLineProgress:F

    return p0
.end method

.method static synthetic access$302(Lcom/miui/home/recents/NavStubView;F)F
    .locals 0

    .line 132
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailY:F

    return p1
.end method

.method static synthetic access$3100(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 132
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    return p0
.end method

.method static synthetic access$3300(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateTaskViewToInitPosition()V

    return-void
.end method

.method static synthetic access$3400(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetTaskView:Z

    return p0
.end method

.method static synthetic access$3500(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 132
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    return p0
.end method

.method static synthetic access$3700(Lcom/miui/home/recents/NavStubView;F)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateTaskViewTransY(F)V

    return-void
.end method

.method static synthetic access$3800(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetTaskView()V

    return-void
.end method

.method static synthetic access$3900(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 132
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    return p0
.end method

.method static synthetic access$400(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 132
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mPivotLocY:I

    return p0
.end method

.method static synthetic access$4000(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;FFF)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/NavStubView;->onBreakOpenRectFAnimUpdate(Landroid/graphics/RectF;FFF)V

    return-void
.end method

.method static synthetic access$4100(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToLauncher(Z)V

    return-void
.end method

.method static synthetic access$4200(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->resetShortcutIconAlpha(Lcom/miui/home/launcher/ShortcutIcon;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToRecents(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->switchToScreenshot()V

    return-void
.end method

.method static synthetic access$4500(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->onAppModeGestureEnd()V

    return-void
.end method

.method static synthetic access$4602(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/util/RectFSpringAnim;)Lcom/miui/home/recents/util/RectFSpringAnim;
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->needDelayBlur()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4800(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/miui/home/recents/NavStubView;->mCancelAppToAppAnim:Z

    return p0
.end method

.method static synthetic access$4802(Lcom/miui/home/recents/NavStubView;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mCancelAppToAppAnim:Z

    return p1
.end method

.method static synthetic access$4902(Lcom/miui/home/recents/NavStubView;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIgnoreInputConsumer:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 132
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailXDelta:F

    return p0
.end method

.method static synthetic access$5000(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resumeLastTask()V

    return-void
.end method

.method static synthetic access$502(Lcom/miui/home/recents/NavStubView;F)F
    .locals 0

    .line 132
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailXDelta:F

    return p1
.end method

.method static synthetic access$5100(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty()V

    return-void
.end method

.method static synthetic access$5200(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->setIsQuickSwitching(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5400(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->disableUpdateStatusBarClock()V

    return-void
.end method

.method static synthetic access$5500(Lcom/miui/home/recents/NavStubView;I)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->startNewTask(I)V

    return-void
.end method

.method static synthetic access$5600(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty(Z)V

    return-void
.end method

.method static synthetic access$5700(Lcom/miui/home/recents/NavStubView;ZZZLjava/lang/String;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$5800(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/NavStubView$ModeGesture;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    return-void
.end method

.method static synthetic access$5902(Lcom/miui/home/recents/NavStubView;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsFullScreenMode:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 132
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailYDelta:F

    return p0
.end method

.method static synthetic access$6000(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/AntiMistakeTouchView;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/miui/home/recents/NavStubView;F)F
    .locals 0

    .line 132
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailYDelta:F

    return p1
.end method

.method static synthetic access$6100(Lcom/miui/home/recents/NavStubView;)Z
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isMistakeTouch()Z

    move-result p0

    return p0
.end method

.method static synthetic access$6200(Lcom/miui/home/recents/NavStubView;FF)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    return-void
.end method

.method static synthetic access$6300(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetSmallWindowCrop()V

    return-void
.end method

.method static synthetic access$6400(Lcom/miui/home/recents/NavStubView;Landroid/view/MotionEvent;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->initAndUpdateSmallWindowCrop(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->exitSmallWindowCrop()V

    return-void
.end method

.method static synthetic access$6600(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->startSmallWindow()V

    return-void
.end method

.method static synthetic access$6700(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateSmallWindowCropConfiguration()V

    return-void
.end method

.method static synthetic access$6800(Lcom/miui/home/recents/NavStubView;)Lcom/miui/home/recents/views/RecentsSmallWindowCrop;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    return-object p0
.end method

.method static synthetic access$6900(Lcom/miui/home/recents/NavStubView;)Landroid/view/WindowManager;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$7000(Lcom/miui/home/recents/NavStubView;)F
    .locals 0

    .line 132
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewRadius:F

    return p0
.end method

.method static synthetic access$702(Lcom/miui/home/recents/NavStubView;F)F
    .locals 0

    .line 132
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailDistance:F

    return p1
.end method

.method static synthetic access$800(Lcom/miui/home/recents/NavStubView;)I
    .locals 0

    .line 132
    iget p0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    return p0
.end method

.method static synthetic access$900(Lcom/miui/home/recents/NavStubView;)Landroid/os/Handler;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/miui/home/recents/NavStubView;->mFrameHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private actionUpResolution()V
    .locals 2

    .line 3720
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFrameHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3722
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isFastPullUp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3723
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3724
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isFastPullDown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3725
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPullLeft()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3726
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3727
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPullRight()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3728
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3730
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3733
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPullLeft()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3734
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3735
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isPullRight()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3736
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3738
    :cond_5
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    :goto_0
    return-void
.end method

.method private addHomeModeLayoutListener()V
    .locals 2

    .line 3352
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3353
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mHomeModeTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 3354
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private appTouchResolutionForVersionTwo(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1647
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 1649
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1650
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 1651
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resumeLastTask()V

    .line 1654
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->initAppModeValues()V

    .line 1656
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->breakOpenAnimIfNeeded()V

    .line 1658
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->startRecentsAnimation()V

    .line 1659
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getRunningTaskInfo()V

    .line 1661
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 1663
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->initLauncherViewState()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1664
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateDimLayerAlpha(F)V

    .line 1666
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1667
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/LauncherAppTransitionManager;->isOpenAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    move v3, v2

    .line 1668
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, p1, v3}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;FZ)V

    .line 1670
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeAllSmallWindowMessages()V

    .line 1671
    invoke-direct {p0, v2, v1}, Lcom/miui/home/recents/NavStubView;->sendSmallWindowMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1672
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-ne v0, v4, :cond_4

    .line 1673
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateMotionEventVelocity(Landroid/view/MotionEvent;)V

    .line 1674
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 1675
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    .line 1676
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    .line 1677
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->isAnimChainOn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1678
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getDimAlpha()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateDimLayerAlpha(F)V

    .line 1681
    :cond_3
    invoke-direct {p0, v4, p1}, Lcom/miui/home/recents/NavStubView;->sendSmallWindowMessage(ILjava/lang/Object;)V

    .line 1682
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    invoke-virtual {p1, v5}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 1683
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 1684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 1685
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/RecentsModel;->setIgnoreTaskSnapshotChanged(Z)V

    .line 1686
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->cancelBreakOpenRectFAnim()V

    const/4 v0, 0x0

    .line 1687
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    .line 1689
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->enableInputProxy()V

    .line 1690
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->cancelRecentsAnimation()V

    .line 1692
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->isStartSmallWindow(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1693
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStateMachine;->removeCallbacksAndMessage()V

    const/4 p1, 0x4

    .line 1694
    invoke-direct {p0, p1, v1}, Lcom/miui/home/recents/NavStubView;->sendSmallWindowMessage(ILjava/lang/Object;)V

    .line 1695
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty()V

    .line 1696
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1, v2}, Lcom/miui/home/launcher/common/BlurUtils;->resetBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;Z)V

    const-string p1, "startSmallWindow"

    .line 1697
    invoke-direct {p0, v3, v3, v3, p1}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    goto :goto_0

    .line 1699
    :cond_6
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->actionUpResolution()V

    :goto_0
    const-wide/16 v2, 0x64

    .line 1701
    invoke-direct {p0, v5, v1, v2, v3}, Lcom/miui/home/recents/NavStubView;->sendSmallWindowMessage(ILjava/lang/Object;J)V

    :cond_7
    :goto_1
    return-void
.end method

.method private assistantTouchResolution(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1348
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/FsGestureAssistHelper;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 1349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "assistantTouchResolution"

    const/4 v0, 0x0

    .line 1352
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private breakOpenAnimIfNeeded()V
    .locals 1

    .line 1845
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->needBreakOpenAnim()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    .line 1846
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    if-eqz v0, :cond_0

    .line 1847
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    .line 1848
    invoke-virtual {v0}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->breakOpenAnim()V

    :cond_0
    return-void
.end method

.method private calculateDamping()F
    .locals 1

    .line 391
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f7d70a4    # 0.99f

    return v0

    :cond_0
    const v0, 0x3f5c28f6    # 0.86f

    return v0
.end method

.method private calculateResponse()F
    .locals 2

    .line 399
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

    .line 2065
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskAlpha:F

    .line 2066
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskAlpha:F

    return v0
.end method

.method private calculateTaskFullscreenProgress()F
    .locals 3

    .line 2060
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/recents/NavStubView;->getPercentsValue(FFF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    .line 2061
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    return v0
.end method

.method private calculateTaskInitRectF()Landroid/graphics/Rect;
    .locals 4

    .line 2018
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    .line 2019
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private calculateTaskPosition()V
    .locals 7

    .line 2033
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getTaskStackLayoutAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    .line 2037
    :cond_0
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mDownY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    int-to-float v1, v1

    invoke-virtual {v6, v0, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculatePer(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    .line 2038
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    invoke-virtual {v6, v0, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskWidthNew(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    .line 2040
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    iget-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mIsVertical:Z

    .line 2039
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskRatio(FFFZ)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRatio:F

    .line 2042
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    .line 2043
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mDownY:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    .line 2044
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v3, v0

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    move-object v0, v6

    .line 2043
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskY(FFFFF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    .line 2045
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mDownX:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskX(FFFF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    .line 2046
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskFullscreenProgress()F

    .line 2047
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v6, v0, v1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->calculateTaskRadius(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    .line 2048
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskAlpha()F

    return-void
.end method

.method private calculateTaskWidthHome()F
    .locals 3

    .line 2023
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewWidth:F

    .line 2024
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewWidth:F

    return v0
.end method

.method private calculateTaskXHome()F
    .locals 4

    .line 2028
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

    .line 2029
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewX:F

    return v0
.end method

.method private cancelBreakOpenRectFAnim()V
    .locals 1

    .line 2123
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    if-eqz v0, :cond_0

    .line 2124
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->finishBreakOpenAnimRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 2125
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2126
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 2128
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    const/4 v0, 0x1

    .line 2129
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsCancelBreakOpenAnim:Z

    return-void
.end method

.method private cancelHomeFadeInAnim()V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelRecentsAnimation()V
    .locals 2

    .line 1828
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1829
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStateMachine;->removeCallbacksAndMessage()V

    const-string v0, "cancelRecentsAnimation"

    const/4 v1, 0x0

    .line 1830
    invoke-direct {p0, v1, v1, v1, v0}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    .line 1831
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mStartRecentsAnimationRunnable:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/LauncherUtils;->hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1832
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mStartRecentsAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1834
    :cond_0
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mCancelRecentsAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private cancelSyncTransactionApplier()V
    .locals 2

    .line 2692
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setSyncTransactionApplier(Lcom/android/systemui/shared/recents/system/SyncRtSurfaceTransactionApplierCompat;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    return-void
.end method

.method private changeAlphaScaleForFsGesture(FF)V
    .locals 2

    .line 733
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$I_IxLGTFIV3uaeo6kQPrxjebR6s;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/-$$Lambda$NavStubView$I_IxLGTFIV3uaeo6kQPrxjebR6s;-><init>(Lcom/miui/home/recents/NavStubView;FF)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private clearMessages()V
    .locals 2

    .line 1200
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView$H;->removeMessages(I)V

    .line 1201
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView$H;->removeMessages(I)V

    .line 1202
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView$H;->removeMessages(I)V

    return-void
.end method

.method private disableTouch(Z)V
    .locals 3

    .line 967
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "distouch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mDisableTouch:Z

    .line 971
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 973
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    .line 975
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 978
    :cond_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 981
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private disableUpdateStatusBarClock()V
    .locals 3

    .line 3115
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->enableUpdateStatusBarClockRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 3116
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mDisableUpdateStatusBarClock:Z

    .line 3117
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->enableUpdateStatusBarClockRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x50

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/recents/NavStubView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private endAppToRecentsAnimIfNeeded()V
    .locals 1

    .line 2716
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isAppToRecentsAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2717
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->end()V

    :cond_0
    return-void
.end method

.method private exitFreeFormWindowIfNeeded()V
    .locals 0

    return-void
.end method

.method private exitSmallWindowCrop()V
    .locals 2

    .line 4040
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "NavStubView::exitSmallWindowCrop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4041
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isSmallWindowInit()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4045
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRemoveSmallViewRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->exitSmallWindowCrop(Ljava/lang/Runnable;)V

    return-void
.end method

.method private finalization(ZZZLjava/lang/String;)V
    .locals 0

    .line 3791
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "===>>>finalization executed from: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3793
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3794
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentTransitionRequest(I)V

    .line 3797
    :cond_0
    iput-boolean p2, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    .line 3798
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string p3, "ignore_bring_to_front"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 3799
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string p3, "filter_flag"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 3801
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mFrameHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 p3, 0x0

    .line 3802
    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3804
    :cond_1
    iput-boolean p2, p0, Lcom/miui/home/recents/NavStubView;->mIsInFsMode:Z

    return-void
.end method

.method private findClosingShortcutIcon(Landroid/graphics/Rect;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 4

    .line 2208
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->needFindClosingShortcutIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2209
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->getClosingApp(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/util/ComponentAndUserId;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2211
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v3, v0, Lcom/miui/home/launcher/util/ComponentAndUserId;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    iget v0, v0, Lcom/miui/home/launcher/util/ComponentAndUserId;->userId:I

    invoke-virtual {v2, v3, v0, v1}, Lcom/miui/home/launcher/Launcher;->getShowingItem(Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    .line 2212
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getClosingShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 2217
    invoke-static {}, Lcom/miui/home/launcher/ItemIcon;->getClosingAppDefaultDisappearRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 2220
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

    .line 2222
    sget-object v2, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v3, "can\'t get closingIcon location"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2223
    invoke-static {}, Lcom/miui/home/launcher/ItemIcon;->getClosingAppDefaultDisappearRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object v1
.end method

.method private finishHideTaskView()V
    .locals 2

    .line 2286
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$KtajWc_0cy2jj-cDcERyYGvR9dU;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$KtajWc_0cy2jj-cDcERyYGvR9dU;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getClosingApp(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/util/ComponentAndUserId;
    .locals 2

    .line 2190
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2191
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    .line 2192
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2193
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2194
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

    .line 2197
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

    .line 2133
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

    .line 404
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

    .line 408
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

    .line 409
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 410
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

.method private getDimAlpha()F
    .locals 4

    .line 1708
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mMinRectWidth:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/recents/DimLayer;->getDimAlphaByRectProgress(FFF)F

    move-result v0

    return v0
.end method

.method private getPercentsValue(FFF)F
    .locals 1

    const/4 v0, 0x0

    .line 2070
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

    .line 430
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

    .line 426
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

    .line 1635
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    .line 1636
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    .line 1638
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1639
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    .line 1642
    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getRunningTaskInfoUserId(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskUserId:I

    .line 1643
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method private getSourceStackBounds()Landroid/graphics/Rect;
    .locals 1

    .line 2052
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2053
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 2055
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getTaskStackLayoutAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;
    .locals 2

    .line 2171
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2172
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2173
    invoke-virtual {v0}, Lcom/miui/home/recents/BaseRecentsImpl;->getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object v0

    iget-object v0, v0, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->mTaskStackLayoutAlgorithm:Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private hideTaskView()V
    .locals 11

    .line 2297
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    if-eqz v0, :cond_0

    .line 2298
    new-instance v2, Landroid/graphics/RectF;

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2299
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v3

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2300
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v7

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v8

    const/4 v9, 0x1

    new-instance v10, Lcom/miui/home/recents/-$$Lambda$NavStubView$qoPoQ_xJ_KZt4dYsnv45CyxZs24;

    invoke-direct {v10, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$qoPoQ_xJ_KZt4dYsnv45CyxZs24;-><init>(Lcom/miui/home/recents/NavStubView;)V

    move-object v1, p0

    .line 2299
    invoke-direct/range {v1 .. v10}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;)V

    goto :goto_0

    .line 2303
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->finishHideTaskView()V

    :goto_0
    return-void
.end method

.method private homeTouchResolution(Landroid/view/MotionEvent;)V
    .locals 4

    .line 3305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3323
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

    .line 3325
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 3326
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    .line 3328
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    .line 3329
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3333
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->actionUpResolution()V

    .line 3334
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    goto :goto_0

    .line 3307
    :pswitch_2
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    .line 3308
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->notifyHomeModeFsGestureStart()V

    .line 3310
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->cancelAppToHomeAnim()V

    .line 3311
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$xg1oBXg8Taru-l6F8VPSEAtVLQc;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$xg1oBXg8Taru-l6F8VPSEAtVLQc;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 3315
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetTaskView:Z

    .line 3316
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    .line 3317
    sget-object v0, Lcom/miui/home/recents/NavStubView$ModeGesture;->HOME_MODE_GESTURE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    .line 3318
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->setIsShowRecents(Z)V

    const/4 p1, -0x1

    .line 3319
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    .line 3320
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

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

.method private initAndUpdateSmallWindowCrop(Landroid/view/MotionEvent;)V
    .locals 2

    .line 3986
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isSmallWindowInit()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3989
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->shouldInitSmallWindowCrop()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mQueryTaskSupportSmallWindowState:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    sget-object v1, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;->IDLE:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    if-ne v0, v1, :cond_1

    .line 3991
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/RecentsAndFSGestureUtils;->canTaskEnterSmallWindow(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3992
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->initSmallWindowCrop()V

    .line 3994
    :cond_0
    sget-object p1, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;->FINISH:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mQueryTaskSupportSmallWindowState:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    goto :goto_0

    .line 3995
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isSmallWindowInit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3996
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateSmallwindowCrop(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initAppModeValues()V
    .locals 2

    .line 1712
    sget-object v0, Lcom/miui/home/recents/NavStubView$ModeGesture;->APP_MODE_GESTURE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    const/4 v0, 0x0

    .line 1713
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsShowRecents(Z)V

    .line 1714
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    .line 1715
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetTaskView:Z

    .line 1716
    sget-object v0, Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;->IDLE:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mQueryTaskSupportSmallWindowState:Lcom/miui/home/recents/NavStubView$QueryTaskSupportSmallWindowState;

    .line 1717
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/RecentsModel;->setIgnoreTaskSnapshotChanged(Z)V

    .line 1718
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->cancelSyncTransactionApplier()V

    .line 1719
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeGoToNormalStartRunnable()V

    return-void
.end method

.method private initAppToHomeAnim(Lcom/miui/home/recents/util/RectFSpringAnim;I)V
    .locals 4

    .line 2439
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/NavStubView;->setAnimVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;I)V

    .line 2441
    sget-object p2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v0, 0x3ed70a3d    # 0.42f

    const v1, 0x3f733333    # 0.95f

    invoke-virtual {p1, p2, v1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2442
    sget-object p2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {p1, p2, v1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2443
    sget-object p2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v2, 0x3f666666    # 0.9f

    const v3, 0x3ee66666    # 0.45f

    invoke-virtual {p1, p2, v2, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2444
    sget-object p2, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v2, 0x3f7d70a4    # 0.99f

    const v3, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, p2, v2, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2445
    sget-object p2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v3, 0x3ebd70a4    # 0.37f

    invoke-virtual {p1, p2, v1, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2446
    sget-object p2, Lcom/miui/home/recents/util/RectFSpringAnim;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {p1, p2, v2, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    return-void
.end method

.method private initLauncherViewState()V
    .locals 2

    .line 1958
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$mnxrv757jAB0Ys0bGxH0jWjleFE;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$mnxrv757jAB0Ys0bGxH0jWjleFE;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1971
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    .line 1972
    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerAlpha()F

    move-result v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    .line 1973
    invoke-virtual {v1}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result v1

    .line 1971
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    return-void
.end method

.method private initSmallWindowCrop()V
    .locals 3

    .line 4001
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "NavStubView::initSmallWindowCrop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4003
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4005
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4008
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v2, "initSmallWindowCrop error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4010
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->initSmallWindowCrop(I)V

    return-void
.end method

.method private initTaskViews()V
    .locals 5

    .line 2002
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2003
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

    .line 2004
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    .line 2005
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setScaleX(F)V

    .line 2006
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setScaleY(F)V

    const/4 v3, 0x0

    .line 2007
    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    .line 2008
    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    .line 2009
    invoke-virtual {v1, v3}, Lcom/miui/home/recents/views/TaskView;->setFullscreenProgress(F)V

    .line 2010
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskView;->setChildrenViewAlpha(F)V

    .line 2011
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v3

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewRadius:F

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    .line 2012
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTaskRatio(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initValue(Landroid/view/MotionEvent;)V
    .locals 2

    .line 3697
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mDownX:F

    .line 3698
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mDownY:F

    .line 3699
    new-instance p1, Lcom/miui/home/recents/GestureStateMachine;

    const-string v0, "GestureStateMachine"

    invoke-direct {p1, v0, p0}, Lcom/miui/home/recents/GestureStateMachine;-><init>(Ljava/lang/String;Lcom/miui/home/recents/NavStubView;)V

    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    .line 3700
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/recents/NavStubView;->mDownTime:J

    const/4 p1, 0x0

    .line 3701
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mLastVelocity:F

    .line 3703
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mDownX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mDelta:F

    .line 3704
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mPivotLocX:I

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailX:F

    .line 3705
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mPivotLocY:I

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailY:F

    .line 3706
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsSafeArea:Z

    const/4 p1, 0x0

    .line 3707
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHold:Z

    .line 3708
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsResetTaskView:Z

    .line 3709
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsCancelBreakOpenAnim:Z

    .line 3710
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/FsGestureStartEvent;

    invoke-direct {v0}, Lcom/miui/home/recents/messages/FsGestureStartEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private injectMotionEvent(I)V
    .locals 21

    move-object/from16 v1, p0

    .line 1001
    iget-object v0, v1, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    return-void

    .line 1007
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

    .line 1008
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

    .line 1007
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 1013
    new-array v11, v2, [Landroid/view/MotionEvent$PointerProperties;

    .line 1015
    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v15, 0x0

    aput-object v3, v11, v15

    .line 1017
    aget-object v3, v11, v15

    invoke-virtual {v0, v15, v3}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 1018
    new-array v12, v2, [Landroid/view/MotionEvent$PointerCoords;

    .line 1019
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v12, v15

    .line 1021
    aget-object v3, v12, v15

    invoke-virtual {v0, v15, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1022
    aget-object v3, v12, v15

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1023
    aget-object v3, v12, v15

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1024
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    const/4 v10, 0x1

    .line 1026
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    .line 1027
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v16

    .line 1028
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    .line 1029
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v20

    move/from16 v9, p1

    move v0, v15

    move v15, v3

    .line 1024
    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v3

    .line 1030
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/shared/recents/system/InputEventCompat;->setDisplayId(Landroid/view/InputEvent;I)V

    :try_start_0
    const-string v4, "android.hardware.input.InputManager"

    .line 1033
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getInstance"

    .line 1034
    new-array v6, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    .line 1035
    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1038
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

    .line 1039
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

    .line 1041
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private isAppToRecentsAnimRunning()Z
    .locals 1

    .line 2712
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

.method private isFastPullDown()Z
    .locals 2

    .line 3772
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

    .line 3760
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

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3765
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

    .line 3766
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

    .line 3768
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

    .line 726
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

    .line 2369
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

.method private isLandScape()Z
    .locals 2

    .line 434
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

.method private isLandscapeConsiderKeptPortrait()Z
    .locals 2

    .line 438
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v0

    goto :goto_0

    .line 440
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

    .line 1761
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1762
    sget-object v2, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1763
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getAllAppsColorMode()Lcom/miui/home/launcher/allapps/AllAppsColorMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1764
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

    .line 1766
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasLightBgForStatusBar()Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method private isMistakeTouch()Z
    .locals 3

    .line 3269
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

    .line 3273
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandScape()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsFullScreenMode:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowNavBar:Z

    if-nez v0, :cond_2

    :goto_0
    return v2

    :cond_2
    return v1
.end method

.method private isNeedStopBecauseRecentsRemoteAnimStartFailed()Z
    .locals 1

    .line 2943
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

.method private isPullLeft()Z
    .locals 2

    .line 3780
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

    .line 3776
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

    .line 422
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

    .line 417
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 418
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

    .line 2947
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

.method private isSmallWindowInit()Z
    .locals 1

    .line 4018
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->isInit()Z

    move-result v0

    return v0
.end method

.method private isStartSmallWindow(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 4060
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

.method private isTaskStackLayoutStyleVertical()Z
    .locals 1

    .line 2166
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2167
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

.method private keyguardTouchResolution(Landroid/view/MotionEvent;)V
    .locals 2

    .line 3514
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3518
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 3522
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isFastPullUp()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3523
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 p1, 0x3

    .line 3524
    invoke-virtual {p0, v0, v0, p1}, Lcom/miui/home/recents/NavStubView;->sendEvent(III)V

    const/4 v1, 0x1

    .line 3525
    invoke-virtual {p0, v1, v0, p1}, Lcom/miui/home/recents/NavStubView;->sendEvent(III)V

    :cond_0
    const-string p1, "keyguardTouchResolution"

    .line 3528
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

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

.method public static synthetic lambda$actionMoveQuickSwitchTaskHold$9(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1561
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

    .line 3562
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3563
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startFsRecentsMoveAnim(Lcom/miui/home/recents/views/RecentsView;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$changeAlphaScaleForFsGesture$7(Lcom/miui/home/recents/NavStubView;FF)V
    .locals 6

    .line 734
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    .line 735
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/Launcher;->changeShortcutMenuLayerAlphaScale(FFIIZ)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$enterHomeHoldState$42(Lcom/miui/home/recents/NavStubView;)V
    .locals 13

    .line 3367
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "enterHomeHoldState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3371
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/home/recents/OverviewState;->mIsFromFsGesture:Z

    .line 3372
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 3373
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iput-boolean v3, v0, Lcom/miui/home/recents/OverviewState;->mIsFromFsGesture:Z

    .line 3375
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->startHomeFadeOutAnim()V

    .line 3376
    new-instance v5, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v6, -0x1

    iget v7, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->useHorizontalStyleToInitTaskView()Z

    move-result v8

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v10

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v11

    const/4 v12, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v12}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFLjava/lang/Runnable;)V

    .line 3377
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    if-nez v0, :cond_1

    .line 3378
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->addHomeModeLayoutListener()V

    .line 3380
    :cond_1
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->setIsShowRecents(Z)V

    .line 3382
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;FZ)V

    .line 3383
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterRecent(Landroid/view/View;)V

    .line 3385
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

.method public static synthetic lambda$enterRecentsHoldState$46(Lcom/miui/home/recents/NavStubView;)V
    .locals 3

    const/4 v0, 0x1

    .line 3571
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->startRecentsStateHomeAnim(Z)V

    const/4 v1, 0x0

    .line 3572
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->startRecentsStateRecentsAnim(Z)V

    .line 3573
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/miui/home/recents/messages/FsGestureEnterRecentsHoldStateEvent;

    invoke-direct {v2}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsHoldStateEvent;-><init>()V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 3575
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/BlurUtils;->resetBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;Z)V

    return-void
.end method

.method public static synthetic lambda$exitHomeHoldState$43(Lcom/miui/home/recents/NavStubView;)V
    .locals 2

    const-wide/16 v0, 0xfa

    .line 3393
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->startHomeFadeInAnim(J)V

    .line 3394
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->startRecentsFadeOutAnim()V

    .line 3396
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/BlurUtils;->resetBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;Z)V

    return-void
.end method

.method public static synthetic lambda$exitRecentsHoldState$47(Lcom/miui/home/recents/NavStubView;)V
    .locals 3

    const/4 v0, 0x0

    .line 3582
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->startRecentsStateHomeAnim(Z)V

    const/4 v0, 0x1

    .line 3583
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->startRecentsStateRecentsAnim(Z)V

    .line 3584
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/miui/home/recents/messages/FsGestureExitRecentsHoldStateEvent;

    invoke-direct {v2}, Lcom/miui/home/recents/messages/FsGestureExitRecentsHoldStateEvent;-><init>()V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 3586
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;FZ)V

    return-void
.end method

.method public static synthetic lambda$finishAppToHome$28(Lcom/miui/home/recents/NavStubView;)V
    .locals 1

    const/4 v0, 0x0

    .line 2702
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setIsAnimatingToLauncher(Z)V

    return-void
.end method

.method public static synthetic lambda$finishAppToHome$29(Lcom/miui/home/recents/NavStubView;)V
    .locals 0

    .line 2706
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->switchToScreenshot()V

    return-void
.end method

.method public static synthetic lambda$finishHideTaskView$18(Lcom/miui/home/recents/NavStubView;)V
    .locals 3

    .line 2287
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2288
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    .line 2289
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2290
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$homeTouchResolution$40(Lcom/miui/home/recents/NavStubView;)V
    .locals 1

    .line 3312
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->reApplyStateIfNeed()V

    return-void
.end method

.method public static synthetic lambda$initLauncherViewState$15(Lcom/miui/home/recents/NavStubView;)V
    .locals 2

    .line 1959
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    .line 1960
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->initTaskViews()V

    .line 1961
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1962
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    .line 1965
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenGestureAppModeStart(Lcom/miui/home/launcher/Launcher;)V

    .line 1967
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->cancelAnimation()V

    .line 1968
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->cancelHomeFadeInAnim()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$new$12(Lcom/miui/home/recents/NavStubView;)V
    .locals 10

    .line 1781
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getCurrentAnim()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1782
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1783
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getCurrentAnim()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1784
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_0

    .line 1785
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    .line 1786
    iget v2, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 1787
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 1788
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mMatrix:Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v0, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1789
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mMatrixArray:[F

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1791
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCropArray:[I

    const/4 v2, 0x0

    aput v2, v0, v2

    const/4 v3, 0x1

    .line 1792
    aput v2, v0, v3

    const/4 v2, 0x2

    .line 1793
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    aput v3, v0, v2

    .line 1794
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCropArray:[I

    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    aput v1, v0, v2

    .line 1796
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getCurrentAnim()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRadius()F

    move-result v0

    .line 1797
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string v2, "KEY_RECENTSANIMATION_MATRIX"

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mMatrixArray:[F

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_RECENTSANIMATION_CROP"

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mCropArray:[I

    .line 1798
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_RECENTSANIMATION_RADIUS"

    .line 1799
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_0

    .line 1801
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeRecentsAnimationExtra()V

    goto :goto_0

    .line 1804
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeRecentsAnimationExtra()V

    .line 1806
    :goto_0
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;Lcom/android/systemui/shared/recents/system/AssistDataReceiver;Lcom/android/systemui/shared/recents/system/RecentsAnimationListener;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic lambda$new$13()V
    .locals 2

    .line 1817
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->cancelRecentsAnimation(Z)V

    return-void
.end method

.method public static synthetic lambda$new$20(Lcom/miui/home/recents/NavStubView;)V
    .locals 3

    .line 2337
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    return-void
.end method

.method public static synthetic lambda$new$38(Lcom/miui/home/recents/NavStubView;)V
    .locals 1

    const/4 v0, 0x0

    .line 3121
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mDisableUpdateStatusBarClock:Z

    return-void
.end method

.method public static synthetic lambda$new$41(Lcom/miui/home/recents/NavStubView;)V
    .locals 10

    const/4 v0, 0x1

    .line 3340
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    .line 3341
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeHomeModeLayoutListener()V

    .line 3342
    new-instance v2, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->useHorizontalStyleToInitTaskView()Z

    move-result v5

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v7

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v8

    const/4 v3, -0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFLjava/lang/Runnable;)V

    .line 3343
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-eqz v0, :cond_0

    .line 3344
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->actionMoveHomeTaskHold()V

    .line 3346
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetTaskView:Z

    if-eqz v0, :cond_1

    .line 3347
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetTaskView()V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$null$24(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 2

    .line 2481
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-object v0, v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    .line 2482
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeSurfaceControlCompat()Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v0

    const/4 v1, 0x0

    .line 2481
    invoke-static {v0, p1, v1}, Lcom/miui/home/recents/FloatingIconLayer;->getValidFloatingIconLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Lcom/miui/home/launcher/ShortcutIcon;Z)Lcom/miui/home/recents/FloatingIconLayer;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    .line 2483
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    if-eqz p1, :cond_1

    .line 2484
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToLauncher:Z

    if-eqz v0, :cond_0

    .line 2485
    invoke-virtual {p1}, Lcom/miui/home/recents/FloatingIconLayer;->drawIcon()V

    goto :goto_0

    .line 2487
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/recents/FloatingIconLayer;->release()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$null$25(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 0

    .line 2509
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->resetShortcutIconAlpha(Lcom/miui/home/launcher/ShortcutIcon;)V

    return-void
.end method

.method public static synthetic lambda$null$32(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;F)V
    .locals 1

    .line 2816
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2817
    invoke-virtual {p1, v0, v0, p2}, Lcom/miui/home/recents/views/TaskView;->setHeaderTranslationAndAlpha(FFF)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$null$34(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;ILcom/miui/home/recents/views/TaskView;)V
    .locals 10

    .line 3006
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    .line 3007
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    .line 3008
    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v7

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v9}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFLjava/lang/Runnable;)V

    if-eqz p3, :cond_0

    .line 3010
    invoke-virtual {p3}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getCurrentTaskViewRatio()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setTaskRatio(F)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$null$35(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;)V
    .locals 10

    if-eqz p1, :cond_0

    .line 3017
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    if-eqz v0, :cond_0

    .line 3018
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

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$null$5(Lcom/miui/home/recents/views/TaskView;)V
    .locals 1

    const/4 v0, 0x0

    .line 649
    const/4 v0, 0x0

    .line 650
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/views/TaskView;->setIgnoreTranslationWhenFindTouchView(Z)V

    return-void
.end method

.method public static synthetic lambda$onInputConsumerEvent$8(Lcom/miui/home/recents/NavStubView;Landroid/view/MotionEvent;)V
    .locals 1

    .line 850
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mEventReceiver:Ljava/util/function/Predicate;

    if-eqz v0, :cond_0

    .line 851
    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$performAppToApp$36(Lcom/miui/home/recents/NavStubView;FFILcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;FFF)V
    .locals 2

    .line 2998
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mCancelAppToAppAnim:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    sub-float v1, v0, p1

    mul-float/2addr v1, p6

    add-float/2addr v1, p1

    .line 3002
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    sub-float/2addr v0, p2

    mul-float/2addr v0, p6

    add-float/2addr p2, v0

    .line 3003
    iput p2, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    .line 3004
    iget p2, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v0, 0x5

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p2, v0, :cond_1

    .line 3005
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance p2, Lcom/miui/home/recents/-$$Lambda$NavStubView$VP_aUhpzLopO7K2JMFrhVO8oXRs;

    invoke-direct {p2, p0, p5, p3, p4}, Lcom/miui/home/recents/-$$Lambda$NavStubView$VP_aUhpzLopO7K2JMFrhVO8oXRs;-><init>(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;ILcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    sub-float p2, v1, p1

    mul-float/2addr p2, p6

    add-float/2addr p1, p2

    .line 3015
    invoke-direct {p0, p5, p1, p7, p8}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    move-result-object p1

    .line 3016
    sget-object p2, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance p3, Lcom/miui/home/recents/-$$Lambda$NavStubView$DWqX5YKFlpt_1A9NH8o12Kqaqcs;

    invoke-direct {p3, p0, p1}, Lcom/miui/home/recents/-$$Lambda$NavStubView$DWqX5YKFlpt_1A9NH8o12Kqaqcs;-><init>(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;)V

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 3023
    :cond_2
    :goto_0
    iget p1, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    sub-float p2, v1, p1

    sub-float p1, v1, p1

    sub-float/2addr v1, p1

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCenterXProgress()F

    move-result p1

    mul-float/2addr v1, p1

    add-float/2addr p2, v1

    .line 3024
    invoke-direct {p0, p2}, Lcom/miui/home/recents/NavStubView;->updateDimLayerAlpha(F)V

    return-void
.end method

.method public static synthetic lambda$performAppToHome$17(Lcom/miui/home/recents/NavStubView;)V
    .locals 3

    .line 2246
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2247
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->hideLandscapeShortcutMenuLayer()V

    .line 2249
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherStateManager;->getState()Lcom/miui/home/launcher/LauncherState;

    move-result-object v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 2250
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    iput-boolean v2, v0, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    .line 2251
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/miui/home/launcher/LauncherStateManager;->exitOverviewStateIfNeed(ZZ)V

    .line 2252
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miui/home/launcher/LauncherState;->mIsIgnoreOverviewAnim:Z

    .line 2254
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    .line 2255
    invoke-direct {p0, v1, v1}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    goto :goto_0

    .line 2257
    :cond_2
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mCurShortcutMenuLayerScale:F

    const/high16 v0, 0x43fa0000    # 500.0f

    .line 2259
    invoke-static {}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getInstance()Lcom/miui/home/recents/TransitionAnimDurationHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/TransitionAnimDurationHelper;->getAnimDurationRatio()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-long v0, v1

    .line 2258
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->startHomeFadeInAnim(J)V

    .line 2260
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v2}, Lcom/miui/home/launcher/common/BlurUtils;->resetBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;Z)V

    .line 2262
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->hideTaskView()V

    .line 2263
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->onGesturePerformAppToHome()V

    .line 2264
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->updateMamlDownloadVisible()V

    return-void
.end method

.method public static synthetic lambda$performAppToRecents$31(Lcom/miui/home/recents/NavStubView;)V
    .locals 3

    .line 2782
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    return-void
.end method

.method public static synthetic lambda$performAppToRecents$33(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;Landroid/graphics/RectF;FFF)V
    .locals 2

    .line 2801
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mMinRectWidth:F

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getDimAlphaByCurrentWidth(F)F

    move-result v0

    .line 2802
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateDimLayerAlpha(F)V

    .line 2810
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    if-eqz v0, :cond_0

    .line 2811
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    .line 2812
    invoke-direct {p0, p2, v0, p4, p5}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    .line 2815
    :cond_0
    sget-object p2, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance p4, Lcom/miui/home/recents/-$$Lambda$NavStubView$tSgjZ6rjuRub_PXr-ukh15LikN4;

    invoke-direct {p4, p0, p1, p3}, Lcom/miui/home/recents/-$$Lambda$NavStubView$tSgjZ6rjuRub_PXr-ukh15LikN4;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;F)V

    invoke-virtual {p2, p4}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$performHomeToHome$44(Lcom/miui/home/recents/NavStubView;)V
    .locals 3

    .line 3433
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->cancelHomeFadeInAnim()V

    .line 3434
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3435
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3438
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3439
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 3440
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ignore_bring_to_front"

    const/4 v2, 0x1

    .line 3441
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "filter_flag"

    .line 3442
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3443
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/Launcher;->onNewIntent(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$performRecentsRest$50(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 3

    .line 3634
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "toRecents"

    const-string v2, "gesture"

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3637
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 3639
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->exitRecentsHoldState()V

    .line 3641
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

.method public static synthetic lambda$quickSwitchTouchResolution$10(Lcom/miui/home/recents/NavStubView;)V
    .locals 3

    .line 1583
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    .line 1585
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$resetLauncherProperty$19(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 2

    .line 2313
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_2

    .line 2314
    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2315
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/home/recents/OverviewState;->mIsIgnoreWallpaperZoom:Z

    :cond_0
    if-eqz p1, :cond_1

    .line 2318
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->postGoToNormalStartRunnable()V

    goto :goto_0

    .line 2320
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mGoToNormalStartRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 2322
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherView()V

    .line 2323
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->onAppModeGestureEnd()V

    :cond_2
    return-void
.end method

.method public static synthetic lambda$resetLauncherView$16(Lcom/miui/home/recents/NavStubView;)V
    .locals 2

    .line 1991
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1992
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsContainer;->setAlpha(F)V

    .line 1994
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 1995
    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherState;->getShortcutMenuLayerAlpha()F

    move-result v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->NORMAL:Lcom/miui/home/launcher/LauncherState;

    .line 1996
    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherState;->getShortcutMenuLayerScale()F

    move-result v1

    .line 1994
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    return-void
.end method

.method public static synthetic lambda$resetTaskView$6(Lcom/miui/home/recents/NavStubView;)V
    .locals 15

    .line 596
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 600
    :cond_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/messages/FsGestureEnterRecentsZoomEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsZoomEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 601
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsContainer;->enterRecentsOfFsGesture()V

    .line 603
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-wide/16 v1, 0x320

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->showStatusBar(Lcom/miui/home/launcher/Launcher;ZJ)V

    .line 605
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->needDelayBlur()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenGestureResetTaskView(Lcom/miui/home/launcher/Launcher;Z)V

    .line 609
    :cond_1
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    if-eq v0, v1, :cond_2

    .line 610
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/ShortcutMenuLayer;->setVisibility(I)V

    .line 613
    :cond_2
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
    if-ge v3, v0, :cond_3

    .line 616
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskViewIndex(I)I

    move-result v2

    .line 618
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

    .line 619
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v4

    sub-int v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v4, v0, v4

    int-to-float v4, v4

    invoke-virtual {v11, v4}, Lcom/miui/home/recents/views/TaskView;->setTranslationZ(F)V

    .line 621
    invoke-virtual {v11}, Lcom/miui/home/recents/views/TaskView;->getFullscreenProgress()F

    move-result v7

    .line 622
    invoke-direct {p0, v11}, Lcom/miui/home/recents/NavStubView;->getCurrentTaskViewRadius(Lcom/miui/home/recents/views/TaskView;)F

    move-result v9

    .line 623
    invoke-virtual {v11}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getTaskRatio()F

    move-result v10

    .line 624
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

    .line 625
    invoke-virtual {v4, v12}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/miui/home/recents/NavStubView$2;

    invoke-direct {v5, p0, v11}, Lcom/miui/home/recents/NavStubView$2;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)V

    .line 636
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 642
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    const v4, 0x3e99999a    # 0.3f

    const/4 v5, 0x4

    .line 644
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

    .line 645
    invoke-virtual {v11, v1}, Lcom/miui/home/recents/views/TaskView;->setIgnoreTranslationWhenFindTouchView(Z)V

    .line 647
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v4

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v2, 0x0

    const v12, 0x3f6147ae    # 0.88f

    new-instance v14, Lcom/miui/home/recents/-$$Lambda$NavStubView$qWjSv37c4-y4EOmElCQnIClm_dI;

    invoke-direct {v14, v11}, Lcom/miui/home/recents/-$$Lambda$NavStubView$qWjSv37c4-y4EOmElCQnIClm_dI;-><init>(Lcom/miui/home/recents/views/TaskView;)V

    move-object v5, v11

    move v6, v3

    move v11, v2

    invoke-virtual/range {v4 .. v14}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewSpringAnim(Lcom/miui/home/recents/views/TaskView;IFFFFFFFLjava/lang/Runnable;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 653
    :cond_3
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsResetTaskView:Z

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->sendFakeEvent()V

    return-void
.end method

.method public static synthetic lambda$showRecents$14(Lcom/miui/home/recents/NavStubView;)V
    .locals 4

    .line 1909
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "showRecents"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isNeedStopBecauseRecentsRemoteAnimStartFailed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1915
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1917
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1919
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1920
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    .line 1921
    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerAlpha()F

    move-result v0

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    .line 1922
    invoke-virtual {v1}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result v1

    .line 1920
    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    .line 1924
    :cond_1
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/home/recents/OverviewState;->mIsFromFsGesture:Z

    .line 1925
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1926
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/OverviewState;->onStateEnabled(Lcom/miui/home/launcher/Launcher;)V

    .line 1927
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/views/RecentsContainer;->setVisibility(I)V

    goto :goto_0

    .line 1929
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v3, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v3, v2}, Lcom/miui/home/launcher/LauncherStateManager;->goToState(Lcom/miui/home/launcher/LauncherState;Z)V

    .line 1931
    :goto_0
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iput-boolean v2, v0, Lcom/miui/home/recents/OverviewState;->mIsFromFsGesture:Z

    .line 1932
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1933
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v3, v1}, Lcom/miui/home/recents/views/RecentsView;->setRunningTaskHidden(IZ)V

    .line 1934
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    .line 1935
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    .line 1937
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->setIsShowRecents(Z)V

    .line 1939
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->setUserControlled(Z)V

    .line 1941
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    iput-boolean v2, v0, Lcom/miui/home/recents/OverviewState;->disableRestore:Z

    .line 1942
    new-instance v0, Lcom/miui/home/recents/NavStubView$8;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$8;-><init>(Lcom/miui/home/recents/NavStubView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/recents/NavStubView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic lambda$startAppToHomeAnim$21(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;Landroid/graphics/RectF;FILcom/miui/home/launcher/ShortcutIcon;FLandroid/graphics/Rect;)V
    .locals 8

    .line 2399
    new-instance v7, Lcom/miui/home/recents/util/RectFSpringAnim;

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    iput-object v7, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 2400
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {p0, p1, p4}, Lcom/miui/home/recents/NavStubView;->initAppToHomeAnim(Lcom/miui/home/recents/util/RectFSpringAnim;I)V

    .line 2401
    invoke-direct {p0, p5, p6, p7}, Lcom/miui/home/recents/NavStubView;->startAppToHomeInMainThread(Lcom/miui/home/launcher/ShortcutIcon;FLandroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic lambda$startAppToHomeAnim$22(Lcom/miui/home/recents/NavStubView;ILandroid/graphics/RectF;FFF)V
    .locals 0

    .line 2410
    iget-boolean p3, p0, Lcom/miui/home/recents/NavStubView;->mCancelFakeAppToHomeAnim:Z

    if-nez p3, :cond_0

    const/4 p3, 0x0

    .line 2411
    invoke-static {p3, p1, p2}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    const/4 p2, 0x0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    :cond_0
    return-void
.end method

.method public static synthetic lambda$startAppToHomeAnim$23(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;FLandroid/graphics/Rect;)V
    .locals 4

    .line 2419
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFakeAppToHomeAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2420
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->finishAppToHome(Z)V

    goto :goto_0

    .line 2422
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFakeAppToHomeAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->copyCurrentAnimState()Lcom/miui/home/recents/util/RectFSpringAnim;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 2423
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2424
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFakeAppToHomeAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 2425
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mCancelFakeAppToHomeAnim:Z

    .line 2426
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/recents/NavStubView;->startAppToHomeInMainThread(Lcom/miui/home/launcher/ShortcutIcon;FLandroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$startAppToHomeInGestureThread$26(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;FLandroid/graphics/RectF;FFF)V
    .locals 12

    move-object v7, p0

    move-object v8, p1

    move-object v9, p3

    .line 2470
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v8, :cond_1

    const v0, 0x3f4ccccd    # 0.8f

    sub-float v0, v0, p4

    const v1, 0x3e99999a    # 0.3f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    sub-float v0, v10, p4

    :goto_0
    const/4 v1, 0x0

    .line 2473
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    cmpl-float v0, v4, v10

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v10

    .line 2474
    :goto_1
    iget-object v2, v7, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v7, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 2475
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getAlphaByAncestors(Landroid/view/View;Landroid/view/View;)F

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v10

    :goto_2
    mul-float v11, v0, v2

    cmpl-float v0, v11, v1

    if-lez v0, :cond_4

    .line 2477
    iget-boolean v0, v7, Lcom/miui/home/recents/NavStubView;->mIsInitFloatingIconLayer:Z

    if-nez v0, :cond_4

    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    .line 2479
    iput-boolean v0, v7, Lcom/miui/home/recents/NavStubView;->mIsInitFloatingIconLayer:Z

    .line 2480
    sget-object v0, Lcom/miui/home/recents/FloatingIconLayer;->FLOATING_ICON_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$NavStubView$GnDd1m7Gm9WDwAKOJwISY3vSYig;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/recents/-$$Lambda$NavStubView$GnDd1m7Gm9WDwAKOJwISY3vSYig;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {v0, v2}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    const v0, 0x3f8ccccd    # 1.1f

    mul-float v0, v0, p6

    .line 2493
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 2495
    iget-boolean v0, v7, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    if-nez v0, :cond_5

    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isShouldBlur()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2496
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result v0

    sget-object v2, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    .line 2497
    invoke-virtual {v2}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result v2

    sub-float v2, v10, v2

    mul-float/2addr v2, v6

    add-float/2addr v0, v2

    goto :goto_3

    :cond_5
    move v0, v10

    .line 2499
    :goto_3
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->min(FF)F

    move-result v5

    if-eqz v8, :cond_6

    .line 2502
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->transformPositionRelativeToAncestor(Landroid/graphics/RectF;)V

    :cond_6
    const/4 v0, 0x0

    .line 2504
    iget-object v1, v7, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    const/4 v2, 0x0

    move-object v0, p0

    move/from16 v3, p5

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFFFF)Landroid/graphics/RectF;

    if-eqz v8, :cond_7

    .line 2507
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherIconImageView;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v10

    if-eqz v0, :cond_7

    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_7

    const/high16 v1, 0x40000000    # 2.0f

    .line 2508
    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isClosedToTarget(F)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2509
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$BL05bdt8syDb3C3P4-gmbZzSCb4;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$NavStubView$BL05bdt8syDb3C3P4-gmbZzSCb4;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2512
    :cond_7
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    if-eqz v0, :cond_8

    invoke-virtual {p3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2513
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0, p3}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToHome(Landroid/graphics/RectF;)V

    .line 2514
    iget-object v0, v7, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    iget-object v1, v7, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/shared/recents/system/SurfaceControlUtils;->getSurfaceControlCompat(Landroid/view/View;)Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    move-result-object v1

    div-float v4, p5, p2

    move-object v2, p3

    move/from16 v3, p4

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/recents/FloatingIconLayer;->showFloatingIcon(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;Landroid/graphics/RectF;FFF)V

    :cond_8
    return-void
.end method

.method public static synthetic lambda$startAppToHomeInMainThread$27(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/recents/views/FloatingIconView;ZLandroid/graphics/Rect;FLandroid/graphics/RectF;FFF)V
    .locals 24

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p6

    move/from16 v15, p7

    move/from16 v10, p8

    .line 2594
    iget-object v0, v11, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRequestCancel()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v11, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2597
    :cond_0
    iget-object v0, v11, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget v1, v11, Lcom/miui/home/recents/NavStubView;->mMinRectWidth:F

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->getDimAlphaByCurrentWidth(F)F

    move-result v0

    .line 2598
    invoke-direct {v11, v0}, Lcom/miui/home/recents/NavStubView;->updateDimLayerAlpha(F)V

    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v12, :cond_1

    const v0, 0x3f4ccccd    # 0.8f

    sub-float/2addr v0, v15

    const v1, 0x3e99999a    # 0.3f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    sub-float v0, v9, v15

    :goto_0
    const/4 v1, 0x0

    .line 2600
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    cmpl-float v0, v8, v9

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v9

    .line 2602
    :goto_1
    iget-object v2, v11, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->isFolderShowing()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v11, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 2603
    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getAlphaByAncestors(Landroid/view/View;Landroid/view/View;)F

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v9

    :goto_2
    mul-float v7, v0, v2

    cmpl-float v0, v7, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eqz v13, :cond_6

    .line 2605
    invoke-virtual/range {p2 .. p2}, Lcom/miui/home/recents/views/FloatingIconView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_6

    if-nez p3, :cond_5

    .line 2609
    iget-object v0, v11, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPreviousRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2610
    iget-object v0, v11, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getPreviousRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-static {v0, v14}, Lcom/miui/home/recents/util/Utilities;->getMiddleRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 2611
    iget-object v3, v11, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v3

    invoke-static {v2, v3, v0}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-direct {v11, v0, v1, v10, v8}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    .line 2614
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->setSyncTransactionApplier()V

    .line 2616
    :cond_5
    invoke-virtual {v13, v2}, Lcom/miui/home/recents/views/FloatingIconView;->setVisibility(I)V

    :cond_6
    if-eqz p3, :cond_8

    .line 2620
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->width()F

    move-result v0

    iput v0, v11, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    .line 2621
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->height()F

    move-result v0

    iput v0, v11, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    .line 2622
    iput v10, v11, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    .line 2623
    iget-object v0, v11, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    iget v1, v11, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 2625
    iget v4, v11, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    const/4 v5, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v4

    move-object/from16 v3, p6

    move-object/from16 v21, v6

    move/from16 v6, v16

    move/from16 v22, v7

    move/from16 v7, v17

    move/from16 v23, v8

    move/from16 v8, v18

    move/from16 v16, v9

    move/from16 v9, v19

    move v15, v10

    move-object/from16 v10, v20

    invoke-direct/range {v0 .. v10}, Lcom/miui/home/recents/NavStubView;->updateTaskView(Lcom/miui/home/recents/views/TaskView;ILandroid/graphics/RectF;IFFZFFLjava/lang/Runnable;)V

    move-object/from16 v1, v21

    move/from16 v0, v23

    .line 2626
    invoke-virtual {v1, v0}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    .line 2627
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v0

    invoke-direct {v11, v1}, Lcom/miui/home/recents/NavStubView;->getCurrentTaskViewRadius(Lcom/miui/home/recents/views/TaskView;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    goto :goto_3

    :cond_7
    move/from16 v22, v7

    move/from16 v16, v9

    move v15, v10

    goto :goto_3

    :cond_8
    move/from16 v22, v7

    move v0, v8

    move/from16 v16, v9

    move v15, v10

    if-eqz v12, :cond_9

    .line 2631
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->transformPositionRelativeToAncestor(Landroid/graphics/RectF;)V

    .line 2633
    :cond_9
    iget-object v3, v11, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v3

    invoke-static {v2, v3, v14}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v11, v2, v1, v15, v0}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    :goto_3
    if-eqz v13, :cond_a

    .line 2636
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v11, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 2637
    invoke-virtual {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2638
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/RectF;->height()F

    move-result v0

    mul-float v0, v0, v16

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconTransparentEdge()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    neg-float v0, v0

    .line 2639
    invoke-virtual {v14, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 2640
    iget-object v0, v11, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0, v14}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToHome(Landroid/graphics/RectF;)V

    div-float v0, v15, p5

    move/from16 v2, v22

    move/from16 v1, p7

    .line 2641
    invoke-virtual {v13, v14, v2, v1, v0}, Lcom/miui/home/recents/views/FloatingIconView;->update(Landroid/graphics/RectF;FFF)V

    :cond_a
    return-void

    :cond_b
    :goto_4
    return-void
.end method

.method public static synthetic lambda$startFirstTask$39(Lcom/miui/home/recents/NavStubView;FFLandroid/graphics/RectF;FFF)V
    .locals 9

    const/4 p5, 0x0

    sub-float p6, p5, p1

    mul-float/2addr p6, p4

    add-float/2addr p1, p6

    .line 3166
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    sub-float/2addr p5, p2

    mul-float/2addr p5, p4

    add-float/2addr p2, p5

    .line 3167
    iput p2, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    .line 3168
    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    .line 3169
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v6

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v7

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p3

    .line 3168
    invoke-direct/range {v0 .. v8}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFLjava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$startHomeFadeInAnim$0(Lcom/miui/home/recents/NavStubView;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 344
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 345
    sget-object v0, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0}, Lcom/miui/home/recents/OverviewState;->getShortcutMenuLayerScale()F

    move-result v0

    .line 346
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurShortcutMenuLayerScale:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 347
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    return-void
.end method

.method public static synthetic lambda$startHomeFadeInAnim$1(Lcom/miui/home/recents/NavStubView;)V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static synthetic lambda$startHomeFadeOutAnim$2(Lcom/miui/home/recents/NavStubView;Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 371
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 372
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    .line 375
    invoke-direct {p0, v1, v0}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    return-void
.end method

.method public static synthetic lambda$startHomeFadeOutAnim$3(Lcom/miui/home/recents/NavStubView;)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public static synthetic lambda$startRecentsStateHomeAnim$48(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-wide/16 v0, 0xfa

    .line 3594
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->startHomeFadeInAnim(J)V

    goto :goto_0

    .line 3596
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->startHomeFadeOutAnim()V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$startRecentsStateRecentsAnim$49(Lcom/miui/home/recents/NavStubView;Z)V
    .locals 2

    .line 3604
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3606
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startToRecentsAnim(Lcom/miui/home/recents/views/RecentsView;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3608
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

.method public static synthetic lambda$switchToScreenshot$37(Lcom/miui/home/recents/NavStubView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 3096
    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isValidate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3097
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 3099
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/recents/views/RecentsView;->updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;)V

    goto :goto_1

    .line 3101
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

.method public static synthetic lambda$updateSysUiFlagsDirectly$11(Lcom/miui/home/recents/NavStubView;FI)V
    .locals 2

    .line 1744
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1747
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->useHomeSysUiFlags(F)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1748
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setWindowThresholdCrossed(Z)V

    .line 1749
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object p1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLightBgForStatusBar()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(Z)V

    goto :goto_1

    .line 1750
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1751
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

    .line 1753
    :cond_2
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getSysUiStatusNavFlags()I

    move-result p1

    .line 1754
    :goto_0
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz p1, :cond_3

    move p2, v0

    :cond_3
    invoke-virtual {v1, p2}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setWindowThresholdCrossed(Z)V

    .line 1755
    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getSystemUiController()Lcom/miui/home/launcher/util/SystemUiController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/util/SystemUiController;->updateUiState(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic lambda$updateTaskViewNew$4(Lcom/miui/home/recents/NavStubView;ZLandroid/graphics/RectF;Ljava/lang/Runnable;ZZIFZFF)V
    .locals 20

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    .line 541
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez p1, :cond_0

    iget-object v0, v11, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->isIsInSmallWindow()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_0
    iget-boolean v0, v11, Lcom/miui/home/recents/NavStubView;->mIsResetTaskView:Z

    if-eqz v0, :cond_1

    goto/16 :goto_5

    .line 546
    :cond_1
    invoke-direct {v11, v12}, Lcom/miui/home/recents/NavStubView;->isInvalidRectF(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_2

    .line 548
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    .line 550
    :cond_2
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTaskViewNew error: rectF="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const v13, 0x3ee66666    # 0.45f

    if-eqz p4, :cond_4

    .line 555
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v13

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 556
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v13

    div-float/2addr v2, v1

    .line 557
    invoke-virtual {v12, v0, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 560
    :cond_4
    iget-object v0, v11, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz p3, :cond_5

    move v0, v15

    goto :goto_0

    :cond_5
    move/from16 v0, v16

    .line 562
    :goto_0
    iget v10, v12, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    move/from16 v9, v16

    :goto_1
    if-ge v9, v14, :cond_a

    .line 564
    iget-object v0, v11, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/miui/home/recents/views/TaskStackView;->getStackIndexFromTaskViewIndex(I)I

    move-result v2

    .line 565
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p5, :cond_6

    iget v0, v11, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    if-ne v2, v0, :cond_6

    move/from16 v18, v9

    move/from16 v19, v10

    goto/16 :goto_4

    .line 568
    :cond_6
    iget-object v0, v11, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/miui/home/recents/views/TaskView;

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p4, :cond_8

    move/from16 v8, p6

    if-ge v2, v8, :cond_7

    move v0, v15

    goto :goto_2

    :cond_7
    const/4 v0, -0x1

    .line 571
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    mul-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr v0, v13

    add-float/2addr v0, v10

    .line 572
    iget v3, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v12, v0, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    const/4 v0, 0x0

    move v6, v0

    goto :goto_3

    :cond_8
    move/from16 v8, p6

    move v6, v0

    :goto_3
    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v18, v9

    move/from16 v9, p10

    move/from16 v19, v10

    move-object/from16 v10, p3

    .line 576
    invoke-direct/range {v0 .. v10}, Lcom/miui/home/recents/NavStubView;->updateTaskView(Lcom/miui/home/recents/views/TaskView;ILandroid/graphics/RectF;IFFZFFLjava/lang/Runnable;)V

    move/from16 v17, v16

    goto :goto_4

    :cond_9
    move/from16 v18, v9

    move/from16 v19, v10

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    .line 579
    invoke-direct/range {v0 .. v10}, Lcom/miui/home/recents/NavStubView;->updateTaskView(Lcom/miui/home/recents/views/TaskView;ILandroid/graphics/RectF;IFFZFFLjava/lang/Runnable;)V

    :goto_4
    add-int/lit8 v9, v18, 0x1

    move/from16 v10, v19

    goto/16 :goto_1

    :cond_a
    if-eqz v17, :cond_b

    .line 584
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    :cond_b
    return-void

    :cond_c
    :goto_5
    return-void
.end method

.method public static synthetic lambda$updateTaskViewTransY$30(Lcom/miui/home/recents/NavStubView;F)V
    .locals 1

    .line 2723
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2724
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    .line 2725
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/TaskStackView;->changeTaskStackViewScrollAndTaskViewTranslation(F)V

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

    .line 3820
    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p3

    sub-double/2addr v2, p3

    double-to-float p1, v2

    goto :goto_0

    :cond_1
    move p1, p2

    .line 3822
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

    .line 2355
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 2356
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 2357
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

    .line 2358
    :goto_1
    iput-boolean v4, v3, Lcom/miui/home/recents/views/TaskViewTransform;->visible:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private needDelayBlur()Z
    .locals 2

    .line 590
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeConsiderKeptPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private needFindClosingShortcutIcon()Z
    .locals 1

    .line 2203
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isKeepRecentsViewPortrait()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeConsiderKeptPortrait()Z

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

    .line 2364
    sget-object v0, Lcom/miui/home/recents/NavStubView$ModeGesture;->IDLE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    .line 2365
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeLayoutListener()V

    return-void
.end method

.method private onBreakOpenRectFAnimUpdate(Landroid/graphics/RectF;FFF)V
    .locals 2

    .line 2105
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsCancelBreakOpenAnim:Z

    if-nez v0, :cond_0

    .line 2106
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    .line 2107
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    .line 2108
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    iget p2, p0, Lcom/miui/home/recents/NavStubView;->mMinRectWidth:F

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/RectFSpringAnim;->getDimAlphaByCurrentWidth(F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateDimLayerAlpha(F)V

    :cond_0
    return-void
.end method

.method private onInputConsumerEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 844
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIgnoreInputConsumer:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 848
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 849
    sget-object v2, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v3, Lcom/miui/home/recents/-$$Lambda$NavStubView$jWeGzTKeMzbK8OVYFKB5x63DIYM;

    invoke-direct {v3, p0, v0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$jWeGzTKeMzbK8OVYFKB5x63DIYM;-><init>(Lcom/miui/home/recents/NavStubView;Landroid/view/MotionEvent;)V

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 854
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 856
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToRecents:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_3

    .line 858
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 859
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsContainer;->isNeedSkipTouch()Z

    move-result p1

    if-nez p1, :cond_3

    .line 860
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->endAppToRecentsAnimIfNeeded()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    if-ne p1, v1, :cond_3

    .line 862
    :cond_2
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToRecents:Z

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 863
    invoke-virtual {p0, v1, p1}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;)V

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method private postGoToNormalStartRunnable()V
    .locals 4

    .line 2329
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeGoToNormalStartRunnable()V

    .line 2330
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

    .line 1570
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1571
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1572
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 1574
    :cond_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1575
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 1578
    :cond_1
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStartNewTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1579
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->removeGoToNormalStartRunnable()V

    .line 1580
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;

    invoke-direct {v0}, Lcom/miui/home/recents/messages/FsGestureEnterRecentsPrepareEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1581
    sget-object p1, Lcom/miui/home/recents/NavStubView$ModeGesture;->APP_MODE_GESTURE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    .line 1582
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$aIVNqi5207zmao40lCnnu6V-SsQ;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$aIVNqi5207zmao40lCnnu6V-SsQ;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1591
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;FZ)V

    .line 1593
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    goto :goto_0

    .line 1594
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-ne v0, v2, :cond_3

    .line 1595
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateMotionEventVelocity(Landroid/view/MotionEvent;)V

    .line 1597
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 1598
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    .line 1600
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    .line 1601
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    invoke-virtual {p1, v3}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 1602
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    .line 1603
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_5

    .line 1604
    :cond_4
    invoke-direct {p0, v1}, Lcom/miui/home/recents/NavStubView;->setIsQuickSwitching(Z)V

    .line 1605
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->actionUpResolution()V

    const/4 p1, 0x0

    .line 1606
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateGestureLineProgress(F)V

    const-string p1, "QuickSwitchTouchResolution"

    .line 1607
    invoke-direct {p0, v1, v1, v1, p1}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private recentsTouchResolution(Landroid/view/MotionEvent;)V
    .locals 1

    .line 3538
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3544
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->updatePivotLoc(Landroid/view/MotionEvent;)V

    const p1, 0x3f666666    # 0.9f

    .line 3545
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mCurShortcutMenuLayerScale:F

    .line 3547
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3551
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->actionUpResolution()V

    const-string p1, "recentsTouchResolution"

    const/4 v0, 0x0

    .line 3552
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    goto :goto_0

    .line 3540
    :pswitch_2
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/messages/FsGestureStartRecentsModeEvent;

    invoke-direct {v0}, Lcom/miui/home/recents/messages/FsGestureStartRecentsModeEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 3541
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

.method private removeAllSmallWindowMessages()V
    .locals 2

    .line 4033
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSmallWindowCropHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4034
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRemoveSmallViewRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 4036
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSmallWindowCropHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method private removeGoToNormalStartRunnable()V
    .locals 2

    .line 2334
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mGoToNormalStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private removeHomeModeLayoutListener()V
    .locals 2

    .line 3359
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3360
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mHomeModeTaskStackViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 3361
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method private removeLayoutListener()V
    .locals 2

    .line 1853
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsViewLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1855
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1856
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

    .line 1811
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string v1, "KEY_RECENTSANIMATION_MATRIX"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1812
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string v1, "KEY_RECENTSANIMATION_CROP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1813
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string v1, "KEY_RECENTSANIMATION_RADIUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    return-void
.end method

.method private resetLauncherProperty()V
    .locals 1

    const/4 v0, 0x0

    .line 2308
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty(Z)V

    return-void
.end method

.method private resetLauncherProperty(Z)V
    .locals 2

    .line 2312
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$L0IvhKTYVNq7nF3oxJ2AjvpRaXY;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$NavStubView$L0IvhKTYVNq7nF3oxJ2AjvpRaXY;-><init>(Lcom/miui/home/recents/NavStubView;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetLauncherView()V
    .locals 2

    .line 1990
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$kzBIlMvOSQeSeexzmYmU6xxwttk;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$kzBIlMvOSQeSeexzmYmU6xxwttk;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1998
    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateDimLayerAlpha(F)V

    return-void
.end method

.method private resetShortcutIconAlpha(Lcom/miui/home/launcher/ShortcutIcon;)V
    .locals 1

    .line 2568
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    if-eqz v0, :cond_0

    .line 2569
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;

    .line 2570
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;->resetShortcutIconAlpha(Lcom/miui/home/launcher/ShortcutIcon;)V

    :cond_0
    return-void
.end method

.method private resetSmallWindowCrop()V
    .locals 1

    .line 3972
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    if-eqz v0, :cond_0

    .line 3973
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->resetSmallWindowCrop()V

    :cond_0
    return-void
.end method

.method private resetTaskView()V
    .locals 2

    .line 595
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$PfAMRUGU8iwlyaXJDarTVdQjk2A;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$PfAMRUGU8iwlyaXJDarTVdQjk2A;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetValue()V
    .locals 1

    const/4 v0, 0x1

    .line 3714
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsInFsMode:Z

    .line 3715
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mDownNo:I

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mLastDownNo:I

    const/4 v0, 0x0

    .line 3716
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedCreateDimLayer:Z

    return-void
.end method

.method private resumeLastTask()V
    .locals 2

    .line 3125
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "resumeLastTask"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->disableUpdateStatusBarClock()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3127
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private sendSmallWindowMessage(ILjava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 3953
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSmallWindowCropHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    .line 3954
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSmallWindowCropHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 3955
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSmallWindowCropHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private sendSmallWindowMessage(ILjava/lang/Object;J)V
    .locals 1

    if-eqz p2, :cond_0

    .line 3960
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSmallWindowCropHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    .line 3961
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSmallWindowCropHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 3962
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getSmallWindowCropHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setAnimVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;I)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 2904
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    .line 2905
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 2906
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    .line 2907
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    add-float/2addr v2, v1

    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    .line 2909
    invoke-static {p2}, Lcom/miui/home/recents/util/RotationHelper;->isLandscapeRotation(I)Z

    move-result v2

    .line 2911
    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v6, v4, v5

    add-float/2addr v3, v6

    if-eqz v2, :cond_1

    .line 2912
    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    .line 2913
    :cond_1
    iget v6, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRatio:F

    .line 2914
    iget v7, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskY:F

    iget v8, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    div-float/2addr v8, v5

    add-float/2addr v7, v8

    .line 2916
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskPosition()V

    .line 2918
    iget v8, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    sub-float/2addr v8, v0

    iput v8, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    .line 2919
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    .line 2921
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskX:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskWidth:F

    div-float v8, v1, v5

    add-float/2addr v0, v8

    sub-float/2addr v0, v3

    if-eqz v2, :cond_2

    .line 2922
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskHeight:F

    :cond_2
    sub-float/2addr v1, v4

    .line 2923
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isTaskStackLayoutStyleVertical()Z

    move-result v2

    if-nez v2, :cond_3

    const/high16 v2, -0x3ee00000    # -10.0f

    const/high16 v3, 0x41200000    # 10.0f

    .line 2924
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2926
    :cond_3
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRatio:F

    sub-float/2addr v2, v6

    .line 2927
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

    .line 2934
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(FFFF)V

    goto :goto_0

    :pswitch_1
    mul-float/2addr v0, v5

    mul-float/2addr v3, v5

    mul-float/2addr v1, v5

    mul-float/2addr v2, v5

    .line 2931
    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(FFFF)V

    goto :goto_0

    :cond_4
    mul-float/2addr v3, v5

    neg-float p2, v0

    mul-float/2addr p2, v5

    mul-float/2addr v1, v5

    mul-float/2addr v2, v5

    .line 2937
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

    .line 3259
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {v0, p4}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 3260
    iget-object p4, p0, Lcom/miui/home/recents/NavStubView;->mTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {p4, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRect(Landroid/graphics/RectF;)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setClipProgress(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setRadius(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 3261
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    .line 3262
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

    .line 2450
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToLauncher:Z

    .line 2451
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2452
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/RecentsContainer;->setIsFsAppToHomeAnimating(Z)V

    :cond_0
    return-void
.end method

.method private setIsAnimatingToRecents(Z)V
    .locals 0

    .line 2457
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToRecents:Z

    return-void
.end method

.method private setIsQuickSwitching(Z)V
    .locals 2

    .line 1612
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    .line 1613
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

    .line 263
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mModeGesture:Lcom/miui/home/recents/NavStubView$ModeGesture;

    return-void
.end method

.method private setSyncTransactionApplier()V
    .locals 3

    .line 2696
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsContainer()Lcom/miui/home/recents/views/RecentsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2697
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

    .line 4014
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
    .locals 2

    .line 1908
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$oDzB01DEfgpyDxaLhBZd-UEqGkw;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$oDzB01DEfgpyDxaLhBZd-UEqGkw;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startAppToHomeInGestureThread(Lcom/miui/home/launcher/ShortcutIcon;FLandroid/graphics/Rect;)V
    .locals 1

    .line 2462
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    const/4 p3, 0x0

    .line 2464
    iput-object p3, p0, Lcom/miui/home/recents/NavStubView;->mFloatingIconLayer:Lcom/miui/home/recents/FloatingIconLayer;

    const/4 p3, 0x0

    .line 2465
    iput-boolean p3, p0, Lcom/miui/home/recents/NavStubView;->mIsInitFloatingIconLayer:Z

    if-eqz p1, :cond_0

    .line 2466
    iget-object p3, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p3, :cond_0

    .line 2467
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object p3

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-virtual {p3, p1, v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->savePositionRelativeToAncestor(Landroid/view/View;Landroid/view/View;)V

    .line 2469
    :cond_0
    iget-object p3, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$dUjYbYFDiLi7eo47Vn9G7jsL468;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/recents/-$$Lambda$NavStubView$dUjYbYFDiLi7eo47Vn9G7jsL468;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;F)V

    invoke-virtual {p3, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 2518
    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance p3, Lcom/miui/home/recents/NavStubView$11;

    invoke-direct {p3, p0, p1}, Lcom/miui/home/recents/NavStubView$11;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;)V

    invoke-virtual {p2, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 2564
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    return-void
.end method

.method private startAppToHomeInMainThread(Lcom/miui/home/launcher/ShortcutIcon;FLandroid/graphics/Rect;)V
    .locals 10

    if-eqz p1, :cond_0

    .line 2581
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    .line 2582
    invoke-static {v0, p1, v1}, Lcom/miui/home/recents/views/FloatingIconView;->getFloatingIconView(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutIcon;Z)Lcom/miui/home/recents/views/FloatingIconView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2584
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 2587
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v5

    .line 2589
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mMinRectWidth:F

    if-eqz p1, :cond_2

    .line 2590
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v1, :cond_2

    .line 2591
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->savePositionRelativeToAncestor(Landroid/view/View;Landroid/view/View;)V

    .line 2593
    :cond_2
    iget-object v8, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v9, Lcom/miui/home/recents/-$$Lambda$NavStubView$lDWCbxIQ2uo6ccCaruGszys9-Rk;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move-object v6, p3

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/-$$Lambda$NavStubView$lDWCbxIQ2uo6ccCaruGszys9-Rk;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/recents/views/FloatingIconView;ZLandroid/graphics/Rect;F)V

    invoke-virtual {v8, v9}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 2645
    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance p3, Lcom/miui/home/recents/NavStubView$12;

    invoke-direct {p3, p0, p1, v0}, Lcom/miui/home/recents/NavStubView$12;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;Lcom/miui/home/recents/views/FloatingIconView;)V

    invoke-virtual {p2, p3}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Lcom/miui/home/recents/util/RectFSpringAnim$RectFSpringAnimListener;)V

    .line 2688
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInMainThread()V

    return-void
.end method

.method private startNewTask(I)V
    .locals 2

    .line 3212
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "startNewTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3214
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

    .line 3216
    invoke-virtual {p1, v1, v0, v1}, Lcom/miui/home/recents/views/TaskView;->launchTask(ZZZ)V

    :cond_0
    return-void
.end method

.method private startRecentsAnimation()V
    .locals 2

    .line 1821
    new-instance v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-direct {v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    const/4 v0, 0x1

    .line 1822
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedCreateDimLayer:Z

    .line 1823
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v0, p0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->addListener(Lcom/miui/home/recents/RecentsAnimationListenerImpl$SwipeAnimationListener;)V

    .line 1824
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mStartRecentsAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startSmallWindow()V
    .locals 2

    .line 4064
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "NavStubView::startSmallWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->startSmallWindow(Landroid/graphics/RectF;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4066
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private startVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1527
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1528
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1530
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private stopVelocityTracker()V
    .locals 1

    .line 1534
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1535
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1536
    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private switchToScreenshot()V
    .locals 3

    .line 3092
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_0

    .line 3093
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v0

    .line 3094
    sget-object v1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$NavStubView$MCLnHJX1ljvDl0ka0BIIhYYY-RI;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$MCLnHJX1ljvDl0ka0BIIhYYY-RI;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateDimLayerAlpha(F)V
    .locals 3

    .line 1977
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_1

    .line 1978
    iget-object v0, v0, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    if-eqz v0, :cond_1

    .line 1979
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->isTranslucent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1980
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedCreateDimLayer:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1981
    invoke-static {}, Lcom/miui/home/recents/DimLayer;->getInstance()Lcom/miui/home/recents/DimLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    iget-object v2, v2, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mRemoteAnimationTargetSet:Lcom/miui/home/recents/util/RemoteAnimationTargetSet;

    invoke-virtual {v2}, Lcom/miui/home/recents/util/RemoteAnimationTargetSet;->getHomeTarget()Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;->leash:Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/DimLayer;->createDimLayer(Lcom/android/systemui/shared/recents/system/SurfaceControlCompat;)V

    .line 1982
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mNeedCreateDimLayer:Z

    .line 1984
    :cond_0
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

    .line 1541
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    .line 1543
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    int-to-float v2, v2

    .line 1542
    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1544
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1545
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 1546
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    .line 1547
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p1

    .line 1548
    new-instance v1, Landroid/graphics/PointF;

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v0, v2

    div-float/2addr p1, v2

    invoke-direct {v1, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    :cond_0
    return-void
.end method

.method private updateScreenSize()V
    .locals 3

    .line 1360
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    .line 1361
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    .line 1362
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1363
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1364
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeConsiderKeptPortrait()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 1365
    iput-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsVertical:Z

    .line 1366
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    .line 1367
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 1369
    iput-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsVertical:Z

    .line 1370
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    .line 1371
    iput v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    .line 1373
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskInitRectF()Landroid/graphics/Rect;

    .line 1374
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1375
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRotationHelper()Lcom/miui/home/recents/util/RotationHelper;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RotationHelper;->setCurrentTransitionRequest(I)V

    :cond_1
    return-void
.end method

.method private updateSmallWindowCropConfiguration()V
    .locals 1

    .line 3966
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    if-eqz v0, :cond_0

    .line 3967
    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->updateConfiguration()V

    :cond_0
    return-void
.end method

.method private updateSmallwindowCrop(Landroid/view/MotionEvent;)V
    .locals 3

    .line 4022
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->isStartSmallWindow(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4023
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->isToLargeState()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4024
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    const/16 v0, 0x103

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/NavStubView$H;->sendMessage(Landroid/os/Message;)Z

    .line 4025
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->toLargeState()V

    goto :goto_0

    .line 4028
    :cond_0
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

.method private updateSysUiFlags(FI)V
    .locals 1

    .line 1732
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1735
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHold:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1738
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/NavStubView;->updateSysUiFlagsDirectly(FI)V

    goto :goto_1

    .line 1736
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

    .line 1743
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$iFT30q8G60VArCyj8XVfQp4pT44;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/home/recents/-$$Lambda$NavStubView$iFT30q8G60VArCyj8XVfQp4pT44;-><init>(Lcom/miui/home/recents/NavStubView;FI)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;
    .locals 0

    .line 3248
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/NavStubView;->setAppTransformParams(Landroid/graphics/RectF;FFF)V

    .line 3249
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

    .line 3253
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/recents/NavStubView;->setAppTransformParams(Landroid/graphics/RectF;FFF)V

    .line 3254
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mHomeTransformParams:Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    invoke-virtual {p1, p6}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setTargetAlpha(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    move-result-object p1

    invoke-virtual {p1, p5}, Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;->setScale(F)Lcom/miui/home/recents/util/ClipAnimationHelper$TransformParams;

    .line 3255
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

.method private updateTaskView(Lcom/miui/home/recents/views/TaskView;ILandroid/graphics/RectF;IFFZFFLjava/lang/Runnable;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v1, p4

    .line 445
    new-instance v4, Landroid/graphics/RectF;

    move-object/from16 v5, p3

    invoke-direct {v4, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 446
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

    .line 448
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    iget v7, v0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v9, 0x1

    if-eq v7, v9, :cond_1

    .line 449
    iget-object v7, v0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v7, v4}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToHome(Landroid/graphics/RectF;)V

    .line 450
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeConsiderKeptPortrait()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 452
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_0

    .line 453
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v7, v9

    .line 454
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v6

    div-float/2addr v7, v9

    goto :goto_0

    :cond_0
    move v7, v8

    .line 456
    :goto_0
    iget v9, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v7

    iput v9, v4, Landroid/graphics/RectF;->right:F

    if-ge v3, v1, :cond_1

    .line 457
    iget v9, v0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    .line 458
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v5, v7

    goto :goto_1

    :cond_1
    move v5, v8

    .line 463
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v7

    invoke-direct/range {p0 .. p1}, Lcom/miui/home/recents/NavStubView;->getCurrentTaskViewRadius(Lcom/miui/home/recents/views/TaskView;)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v7, v9}, Lcom/miui/home/recents/views/TaskViewThumbnail;->setCornerRadius(I)V

    .line 465
    iget v7, v0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v7, v9, v7

    .line 466
    invoke-virtual {v2, v7}, Lcom/miui/home/recents/views/TaskView;->setFullscreenProgress(F)V

    .line 471
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v7

    const v10, 0x47c35000    # 100000.0f

    if-eqz v7, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v7

    if-eqz v7, :cond_8

    .line 472
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v7, v11

    .line 473
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 474
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getThumbnailView()Lcom/miui/home/recents/views/TaskViewThumbnail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/recents/views/TaskViewThumbnail;->getInsets()Landroid/graphics/Rect;

    move-result-object v4

    .line 475
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v13, v6

    mul-float/2addr v12, v13

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    .line 476
    iget v13, v11, Landroid/graphics/RectF;->top:F

    add-float/2addr v13, v12

    iput v13, v11, Landroid/graphics/RectF;->bottom:F

    .line 478
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v12

    .line 480
    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v13

    add-float v12, v12, p5

    neg-float v12, v12

    sub-int v1, v3, v1

    int-to-float v14, v1

    mul-float/2addr v12, v14

    add-float/2addr v12, v5

    .line 482
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getLeft()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getRight()I

    move-result v14

    add-int/2addr v5, v14

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v13, v5

    add-float v5, v13, v12

    cmpl-float v12, v5, v10

    if-lez v12, :cond_2

    move v5, v10

    .line 487
    :cond_2
    iget v12, v0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v12, v12

    mul-float/2addr v12, v9

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v12, v9

    .line 491
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v9

    const/high16 v13, 0x40000000    # 2.0f

    if-eqz v9, :cond_3

    iget v9, v0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    if-eq v3, v9, :cond_4

    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 492
    :cond_4
    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    goto :goto_2

    .line 495
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isTaskStackLayoutStyleVertical()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 496
    iget v9, v0, Lcom/miui/home/recents/NavStubView;->mPer:F

    iget v14, v0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    int-to-float v14, v14

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    mul-float/2addr v4, v12

    sub-float/2addr v14, v4

    div-float/2addr v14, v13

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-direct {p0, v9, v14, v4}, Lcom/miui/home/recents/NavStubView;->getPercentsValue(FFF)F

    move-result v4

    .line 497
    iget v9, v0, Lcom/miui/home/recents/NavStubView;->mPer:F

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x32

    add-int/lit8 v1, v1, 0x19

    int-to-float v1, v1

    invoke-direct {p0, v9, v8, v1}, Lcom/miui/home/recents/NavStubView;->getPercentsValue(FFF)F

    move-result v8

    move v1, v4

    goto :goto_2

    .line 499
    :cond_6
    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    const/high16 v4, 0x43960000    # 300.0f

    .line 500
    iget v8, v0, Lcom/miui/home/recents/NavStubView;->mPer:F

    mul-float/2addr v4, v8

    mul-float/2addr v4, v8

    mul-float/2addr v8, v4

    :goto_2
    mul-float/2addr v6, v7

    div-float/2addr v6, v13

    sub-float/2addr v1, v6

    .line 503
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getTop()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getBottom()I

    move-result v6

    add-int/2addr v4, v6

    int-to-float v4, v4

    div-float/2addr v4, v13

    sub-float/2addr v1, v4

    add-float/2addr v1, v8

    cmpl-float v4, v1, v10

    if-lez v4, :cond_7

    move v6, v7

    move v8, v10

    move v7, v5

    goto :goto_3

    :cond_7
    move v8, v1

    move v6, v7

    move v7, v5

    goto :goto_3

    :cond_8
    move v7, v8

    move v6, v9

    :goto_3
    if-eqz p7, :cond_9

    const/high16 v1, 0x40800000    # 4.0f

    int-to-float v4, v3

    sub-float/2addr v4, v6

    .line 510
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v4, v0, Lcom/miui/home/recents/NavStubView;->mResponseOffset:F

    mul-float/2addr v1, v4

    add-float v10, p9, v1

    .line 511
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v1

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v2, p1

    move/from16 v3, p2

    move v5, v6

    move/from16 v9, p8

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lcom/miui/home/recents/util/SpringAnimationUtils;->startTaskViewSpringAnim(Lcom/miui/home/recents/views/TaskView;IFFFFFFFLjava/lang/Runnable;)V

    goto :goto_4

    .line 513
    :cond_9
    invoke-static {}, Lcom/miui/home/recents/util/SpringAnimationUtils;->getInstance()Lcom/miui/home/recents/util/SpringAnimationUtils;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getSpringAnimationImpl()Lcom/miui/home/recents/util/SpringAnimationImpl;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/miui/home/recents/util/SpringAnimationUtils;->cancelAllSpringAnimation(Lcom/miui/home/recents/util/SpringAnimationImpl;)V

    .line 514
    invoke-virtual {v2, v7}, Lcom/miui/home/recents/views/TaskView;->setTranslationX(F)V

    .line 515
    invoke-virtual {v2, v8}, Lcom/miui/home/recents/views/TaskView;->setTranslationY(F)V

    .line 516
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/miui/home/recents/views/TaskView;->setPivotX(F)V

    .line 517
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/recents/views/TaskView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/miui/home/recents/views/TaskView;->setPivotY(F)V

    .line 518
    invoke-virtual {v2, v6}, Lcom/miui/home/recents/views/TaskView;->setScaleX(F)V

    .line 519
    invoke-virtual {v2, v6}, Lcom/miui/home/recents/views/TaskView;->setScaleY(F)V

    move/from16 v1, p6

    .line 520
    invoke-virtual {v2, v1}, Lcom/miui/home/recents/views/TaskView;->setAlpha(F)V

    if-eqz p10, :cond_a

    .line 522
    invoke-interface/range {p10 .. p10}, Ljava/lang/Runnable;->run()V

    :cond_a
    :goto_4
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

    .line 529
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

    .line 534
    invoke-direct/range {v0 .. v10}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;Z)V

    return-void
.end method

.method private updateTaskViewNew(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;Z)V
    .locals 14

    .line 540
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

    .line 1862
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v0, 0x2

    .line 1863
    new-array v0, v0, [I

    .line 1864
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 1865
    aget v0, v0, v2

    int-to-float v0, v0

    iget v2, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v2

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 1866
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    .line 1867
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->useHorizontalStyleToInitTaskView()Z

    move-result v4

    .line 1868
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v6

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v7

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    .line 1866
    invoke-direct/range {v0 .. v10}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFZLjava/lang/Runnable;Z)V

    return-void
.end method

.method private updateTaskViewTransY(F)V
    .locals 2

    .line 2722
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$RM2bbU6dszDnFgU-ZP2WP8VloTI;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$NavStubView$RM2bbU6dszDnFgU-ZP2WP8VloTI;-><init>(Lcom/miui/home/recents/NavStubView;F)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateViewLayout(I)V
    .locals 1

    .line 3845
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3846
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/NavStubView;->getWindowParam(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3848
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3849
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    :cond_1
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

    .line 2159
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

    .line 2160
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x42700000    # 60.0f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2161
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result v3

    xor-int/2addr v3, v2

    if-nez v3, :cond_1

    if-nez v0, :cond_2

    .line 2162
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

    .line 2138
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "actionMoveAppDrag"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2140
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2141
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mNeedBreakOpenAnim:Z

    .line 2142
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->startBreakOpenRectFAnim()V

    goto :goto_0

    .line 2143
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->isAnimChainOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2144
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getCurrentAnim()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getCurRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->updateEndRectF(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 2145
    :cond_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2146
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getCurRect()Landroid/graphics/RectF;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskAlpha:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/miui/home/recents/NavStubView;->updateTaskPosition(Landroid/graphics/RectF;FFF)Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    .line 2150
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

    .line 2179
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "actionMoveAppTaskHold"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2181
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->actionMoveAppDrag()V

    .line 2182
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    if-eqz v0, :cond_0

    .line 2183
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

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

    .line 3401
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "actionMoveHomeDrag"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3404
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mCurShortcutMenuLayerScale:F

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->changeAlphaScaleForFsGesture(FF)V

    :cond_1
    return-void
.end method

.method public actionMoveHomeTaskHold()V
    .locals 13

    .line 3409
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "actionMoveHomeTaskHold"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3411
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskWidthHome()F

    .line 3412
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateTaskXHome()F

    .line 3414
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewWidth:F

    .line 3415
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    if-eqz v1, :cond_0

    .line 3416
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mScreenHeight:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 3418
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

    .line 3419
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    if-nez v2, :cond_1

    .line 3420
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    .line 3422
    :cond_1
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewX:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 3423
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewWidth:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 3424
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    sub-float v2, v1, v0

    iput v2, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v0

    .line 3425
    iput v1, v5, Landroid/graphics/RectF;->bottom:F

    const/4 v6, -0x1

    .line 3427
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

    .line 1553
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "actionMoveQuickSwitchTaskHold"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1555
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

    .line 1556
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1557
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateDamping()F

    move-result v7

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->calculateResponse()F

    move-result v8

    const/4 v9, 0x0

    move-object v1, p0

    .line 1556
    invoke-direct/range {v1 .. v9}, Lcom/miui/home/recents/NavStubView;->updateTaskViewNew(Landroid/graphics/RectF;IFZZFFLjava/lang/Runnable;)V

    .line 1558
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    .line 1559
    sget-object v1, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$NavStubView$xneHG9O618_TLgjP0I4UhO8rOAY;

    invoke-direct {v2, p0, v0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$xneHG9O618_TLgjP0I4UhO8rOAY;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1565
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    sub-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->updateDimLayerAlpha(F)V

    .line 1566
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getCurrentPositionTaskIndex()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->updateSysUiFlags(FI)V

    return-void
.end method

.method public actionMoveRecentsDrag()V
    .locals 2

    .line 3560
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "actionMoveRecentsDrag"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3561
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$d8X_DQLGaVEy76Nw9VCrNi4FchA;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$d8X_DQLGaVEy76Nw9VCrNi4FchA;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public canPerformQuickSwitch()Z
    .locals 2

    .line 3748
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-nez v0, :cond_0

    .line 3749
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result v0

    return v0

    .line 3751
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

    .line 2575
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2576
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    :cond_0
    return-void
.end method

.method public enableInputProxy()V
    .locals 2

    const/4 v0, 0x0

    .line 834
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIgnoreInputConsumer:Z

    .line 835
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->enableInputConsumer()V

    .line 836
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$7BL0kbxBcE19-XdTQcRtA1ebi74;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$7BL0kbxBcE19-XdTQcRtA1ebi74;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/recents/system/InputConsumerController;->setTouchListener(Lcom/android/systemui/shared/recents/system/InputConsumerController$TouchListener;)V

    .line 838
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$USLMf1boCFlWCbJhW19JaH6GnLw;

    invoke-direct {v1, v0}, Lcom/miui/home/recents/-$$Lambda$USLMf1boCFlWCbJhW19JaH6GnLw;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/miui/home/recents/NavStubView;->mEventReceiver:Ljava/util/function/Predicate;

    :cond_0
    return-void
.end method

.method public enterAppHoldState()V
    .locals 0

    .line 2155
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->showRecents()V

    return-void
.end method

.method public enterHomeHoldState()V
    .locals 2

    .line 3366
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$-OHDd4a8APU7t-H1lzDcyVXv9VI;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$-OHDd4a8APU7t-H1lzDcyVXv9VI;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public enterRecentsHoldState()V
    .locals 2

    .line 3569
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "enterRecentsHoldState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$PyfqxDlM1U5Cw8Siqvoe0gM3Xy0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$PyfqxDlM1U5Cw8Siqvoe0gM3Xy0;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public exitHomeHoldState()V
    .locals 2

    .line 3390
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "exitHomeHoldState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$0n54coI0uT40nqZ95zt8sijtnFY;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$0n54coI0uT40nqZ95zt8sijtnFY;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public exitRecentsHoldState()V
    .locals 2

    .line 3580
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "exitRecentsHoldState"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$N2Hrd7T9EqDuqhARVqHeHprkbEQ;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$N2Hrd7T9EqDuqhARVqHeHprkbEQ;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public finish(ZLjava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    .line 3222
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;Z)V

    return-void
.end method

.method public finish(ZLjava/lang/Runnable;Z)V
    .locals 3

    .line 3226
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

    .line 3228
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_0

    .line 3229
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishController(ZLjava/lang/Runnable;Z)V

    :cond_0
    return-void
.end method

.method public finishAppToHome(Z)V
    .locals 2

    .line 2702
    new-instance v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$5mnNHI_-hgWqZsdunoJ_UuMDjCU;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$5mnNHI_-hgWqZsdunoJ_UuMDjCU;-><init>(Lcom/miui/home/recents/NavStubView;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, p1}, Lcom/miui/home/recents/NavStubView;->finish(ZLjava/lang/Runnable;Z)V

    .line 2704
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz p1, :cond_0

    .line 2705
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->clearCurSelectedShortcutIcon()V

    .line 2706
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    new-instance v0, Lcom/miui/home/recents/-$$Lambda$NavStubView$GQBSh2yccR3eaIzdERkTn4cspds;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$GQBSh2yccR3eaIzdERkTn4cspds;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2708
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->onAppModeGestureEnd()V

    return-void
.end method

.method public finishDirectly(Z)V
    .locals 3

    .line 3234
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish: toRecents="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3237
    invoke-virtual {v0, p1, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishControllerDirectly(ZZ)V

    :cond_0
    return-void
.end method

.method public finishEnterRecentsNow()V
    .locals 2

    .line 2867
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mEnterRecentsRunnale:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/LauncherUtils;->hasCallbacks(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2868
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/MainThreadExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mEnterRecentsRunnale:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 2869
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->finishDirectly(Z)V

    :cond_0
    return-void
.end method

.method public finishPendingController()V
    .locals 1

    .line 3242
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz v0, :cond_0

    .line 3243
    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishPendingController()V

    :cond_0
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 10

    if-eqz p1, :cond_0

    .line 3827
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isMistakeTouch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3828
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getWidth()I

    move-result v0

    .line 3829
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getHeight()I

    move-result v1

    .line 3831
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

    .line 3834
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLocation:[I

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/NavStubView;->getLocationInWindow([I)V

    .line 3835
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLocation:[I

    const/4 v3, 0x0

    aget v5, v2, v3

    const/4 v4, 0x1

    .line 3836
    aget v6, v2, v4

    add-int v7, v5, v0

    add-int v8, v6, v1

    .line 3837
    sget-object v9, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return v3

    .line 3841
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p1

    return p1
.end method

.method public getCurrentPositionTaskIndex()I
    .locals 4

    .line 2891
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mInitX:F

    sub-float v2, v0, v1

    const/high16 v3, 0x43480000    # 200.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 2892
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getLeftTaskIndex()I

    move-result v0

    return v0

    :cond_0
    sub-float/2addr v0, v1

    const/high16 v1, -0x3cb80000    # -200.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 2894
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getRightTaskIndex()I

    move-result v0

    return v0

    .line 2896
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    return v0
.end method

.method public getHotSpaceHeight()I
    .locals 4

    const-string v0, "lithium"

    .line 3886
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x41600000    # 14.0f

    .line 3887
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    return v0

    .line 3890
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-eqz v0, :cond_1

    const/16 v0, 0xd

    goto :goto_0

    :cond_1
    const/16 v0, 0x19

    :goto_0
    int-to-float v0, v0

    .line 3891
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    .line 3892
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeConsiderKeptPortrait()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3893
    sget-object v1, Lcom/miui/home/recents/NavStubView;->DEVICE_BOTTOM_EDGE_HEIGHTS:Ljava/util/HashMap;

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 3894
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x40900000    # 4.5f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    const/4 v2, 0x5

    .line 3896
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v3, v1

    .line 3897
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3895
    invoke-static {v2, v3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    add-float/2addr v0, v1

    .line 3900
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

    .line 2874
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2875
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

    .line 2876
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

    .line 2883
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2884
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

    .line 3909
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCropHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 3910
    new-instance v0, Lcom/miui/home/recents/NavStubView$SmallWindowCropHandler;

    invoke-static {}, Lcom/miui/home/launcher/util/UiThreadHelper;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/NavStubView$SmallWindowCropHandler;-><init>(Lcom/miui/home/recents/NavStubView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCropHandler:Landroid/os/Handler;

    .line 3912
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallWindowCropHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getWindowParam(I)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 3862
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7e8

    const/16 v4, 0x128

    const/4 v5, -0x3

    move-object v0, v6

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 p1, 0x0

    .line 3872
    invoke-static {v6, p1}, Lcom/miui/home/recents/util/Utilities;->setFitInsetsTypes(Landroid/view/WindowManager$LayoutParams;I)V

    .line 3873
    iget p1, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x40

    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 p1, 0x50

    .line 3874
    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3878
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

    .line 3111
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mDisableUpdateStatusBarClock:Z

    return v0
.end method

.method public isInAppModeGesture()Z
    .locals 2

    .line 267
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

    .line 3756
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

    .line 3744
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

    .line 311
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-double v0, v0

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mVelocityPxPerMs:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 312
    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mLastVelocity:F

    sub-float v1, v0, v1

    const/high16 v2, -0x40000000    # -2.0f

    cmpg-float v1, v1, v2

    .line 313
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailDistance:F

    const/high16 v4, 0x41c80000    # 25.0f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 315
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

    .line 316
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

    .line 317
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x42700000    # 60.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    .line 318
    :goto_1
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mLastVelocity:F

    if-eqz v1, :cond_2

    .line 319
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->isIsInSmallWindow()Z

    move-result v0

    if-nez v0, :cond_2

    .line 320
    iput-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mIsAppHold:Z

    .line 321
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterRecent(Landroid/view/View;)V

    :cond_2
    if-nez v1, :cond_3

    if-eqz v4, :cond_4

    .line 324
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsSmallWindowCrop;->isIsInSmallWindow()Z

    move-result v0

    if-nez v0, :cond_4

    .line 325
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsRemoteAnimStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method public isToHomeDragState()Z
    .locals 2

    .line 301
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

    .line 295
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailDistance:F

    const/high16 v1, 0x41c80000    # 25.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mFollowTailXDelta:F

    .line 296
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
    return v0
.end method

.method public isToRecentsDrag()Z
    .locals 2

    .line 334
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

    .line 330
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

    .line 2340
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2343
    :cond_0
    sget-object v0, Lcom/miui/home/recents/NavStubView$23;->$SwitchMap$com$miui$home$recents$NavStubView$ModeGesture:[I

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mModeGesture:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-virtual {v1}, Lcom/miui/home/recents/NavStubView$ModeGesture;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x4

    .line 2348
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/NavStubView;->modifyTransformVisible(Ljava/util/ArrayList;I)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x3

    .line 2345
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

    .line 1840
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getAppTransitionManager()Lcom/miui/home/recents/LauncherAppTransitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1841
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->isAnimChainOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 771
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 773
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.systemui.fullscreen.statechange"

    .line 774
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mFullScreenModeChangeReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 779
    invoke-static {}, Lcom/android/systemui/shared/recents/system/InputConsumerController;->getRecentsAnimationInputConsumer()Lcom/android/systemui/shared/recents/system/InputConsumerController;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    .line 780
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/InputConsumerController;->registerInputConsumer()V

    .line 781
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-virtual {v0}, Lcom/miui/home/recents/FsGestureAssistHelper;->registerAssistObserver()V

    .line 783
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    if-nez v0, :cond_0

    .line 784
    new-instance v0, Lcom/miui/home/recents/NavStubView$4;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$4;-><init>(Lcom/miui/home/recents/NavStubView;)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    .line 817
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    invoke-static {v0, v1}, Lcom/android/systemui/shared/recents/touchableRegion/TouchableRegionCompat;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 742
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

    .line 750
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getHotSpaceHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/home/recents/NavStubView;->updateViewLayout(I)V

    .line 752
    :cond_6
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    if-eqz v1, :cond_8

    .line 754
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isMistakeTouch()Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v3

    goto :goto_4

    :cond_7
    const/16 v4, 0x8

    .line 753
    :goto_4
    invoke-virtual {v1, v4}, Lcom/miui/home/recents/AntiMistakeTouchView;->updateVisibilityState(I)V

    :cond_8
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_9

    move v0, v2

    goto :goto_5

    :cond_9
    move v0, v3

    .line 758
    :goto_5
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->isInDarkMode(Landroid/content/res/Configuration;)Z

    move-result p1

    .line 760
    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsDarkMode:Z

    if-eq v1, p1, :cond_a

    .line 761
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsDarkMode:Z

    goto :goto_6

    :cond_a
    move v2, v3

    .line 764
    :goto_6
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mSmallwindowCrop:Lcom/miui/home/recents/views/RecentsSmallWindowCrop;

    if-eqz p1, :cond_c

    if-nez v0, :cond_b

    if-eqz v2, :cond_c

    :cond_b
    const/4 p1, 0x5

    const/4 v0, 0x0

    .line 765
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/NavStubView;->sendSmallWindowMessage(ILjava/lang/Object;)V

    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 822
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 824
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mFullScreenModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 825
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mInputConsumer:Lcom/android/systemui/shared/recents/system/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/system/InputConsumerController;->unregisterInputConsumer()V

    .line 826
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-virtual {v0}, Lcom/miui/home/recents/FsGestureAssistHelper;->unRegisterAssistObserver()V

    .line 828
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->onComputeInternalInsetsListenerCompat:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    invoke-static {v0, v1}, Lcom/android/systemui/shared/recents/touchableRegion/TouchableRegionCompat;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;)V

    :cond_0
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1207
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

    .line 1208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "   action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   mIsInFsMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsInFsMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1207
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsInFsMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1216
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/monitor/LauncherMonitor;->getInstance()Lcom/miui/home/launcher/common/ILauncherMonitor;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/common/ILauncherMonitor;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 1219
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isMistakeTouch()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1220
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    if-eqz v0, :cond_3

    .line 1221
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/miui/home/recents/NavStubView;->mLastTouchTime:J

    sub-long/2addr v2, v4

    .line 1222
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

    .line 1224
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1001dd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1225
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1226
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    if-eqz p1, :cond_1

    .line 1227
    invoke-virtual {p1}, Lcom/miui/home/recents/AntiMistakeTouchView;->slideUp()V

    .line 1229
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/recents/NavStubView;->mLastTouchTime:J

    return v1

    .line 1232
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->antiMistakeTouchView:Lcom/miui/home/recents/AntiMistakeTouchView;

    if-eqz v0, :cond_4

    .line 1233
    invoke-virtual {v0}, Lcom/miui/home/recents/AntiMistakeTouchView;->slideUp()V

    return v1

    :cond_3
    return v1

    .line 1241
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 1242
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mDownNo:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mDownNo:I

    .line 1244
    :cond_5
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mDownNo:I

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mLastDownNo:I

    if-ne v0, v3, :cond_6

    return v1

    .line 1248
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-nez v0, :cond_13

    .line 1249
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->updateScreenSize()V

    .line 1250
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->initValue(Landroid/view/MotionEvent;)V

    .line 1252
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getRunningTaskContainHome()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1253
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_12

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_7

    goto/16 :goto_2

    .line 1258
    :cond_7
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

    .line 1259
    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v4, :cond_8

    sget-object v5, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v2

    goto :goto_0

    :cond_8
    move v4, v1

    :goto_0
    if-eqz v0, :cond_b

    .line 1261
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez v5, :cond_9

    .line 1262
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v5

    iput-object v5, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 1264
    :cond_9
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v5, :cond_b

    .line 1265
    invoke-virtual {v5}, Lcom/miui/home/launcher/Launcher;->hasWindowFocus()Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->hasBeenResumed()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1266
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1268
    :cond_a
    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v5, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v4

    .line 1272
    :cond_b
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/KeyguardManager;

    .line 1273
    invoke-virtual {v5}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v0, 0x4

    .line 1277
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    goto :goto_3

    .line 1279
    :cond_c
    iget-object v5, p0, Lcom/miui/home/recents/NavStubView;->mFsGestureAssistHelper:Lcom/miui/home/recents/FsGestureAssistHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v7, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v7, v7

    iget v8, p0, Lcom/miui/home/recents/NavStubView;->mSystemUiFlags:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/miui/home/recents/FsGestureAssistHelper;->canTriggerAssistantAction(FFI)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v0, 0x6

    .line 1280
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    goto :goto_3

    .line 1281
    :cond_d
    iget-boolean v5, p0, Lcom/miui/home/recents/NavStubView;->mIsQuickSwitching:Z

    if-eqz v5, :cond_e

    const/4 v0, 0x5

    .line 1282
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    .line 1283
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v4, 0x67

    invoke-virtual {v0, v2, v4}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(II)V

    goto :goto_3

    :cond_e
    if-nez v0, :cond_10

    .line 1284
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToLauncher:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsAnimatingToRecents:Z

    if-eqz v0, :cond_f

    goto :goto_1

    :cond_f
    const/4 v0, 0x2

    .line 1293
    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    .line 1294
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v4, 0x65

    invoke-virtual {v0, v2, v4}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(II)V

    goto :goto_3

    :cond_10
    :goto_1
    if-eqz v4, :cond_11

    .line 1286
    iput v3, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    .line 1287
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v4, 0x66

    invoke-virtual {v0, v2, v4}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(II)V

    goto :goto_3

    .line 1289
    :cond_11
    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    .line 1290
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStateMachine:Lcom/miui/home/recents/GestureStateMachine;

    const/16 v4, 0x64

    invoke-virtual {v0, v2, v4}, Lcom/miui/home/recents/GestureStateMachine;->sendMessage(II)V

    goto :goto_3

    .line 1254
    :cond_12
    :goto_2
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    .line 1298
    :cond_13
    :goto_3
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current window mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " (1:home, 2:app, 3:recent-task, 4:keyguard)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->startVelocityTracker(Landroid/view/MotionEvent;)V

    .line 1302
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v2, v0, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v3, v0, :cond_15

    .line 1303
    :cond_14
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetValue()V

    .line 1305
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateMotionEventVelocity(Landroid/view/MotionEvent;)V

    .line 1306
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->stopVelocityTracker()V

    .line 1309
    :cond_15
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    packed-switch v0, :pswitch_data_0

    .line 1330
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsInFsMode:Z

    goto :goto_4

    .line 1326
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->assistantTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_4

    .line 1323
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->quickSwitchTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_4

    .line 1320
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->keyguardTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_4

    .line 1317
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->recentsTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_4

    .line 1311
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->appTouchResolutionForVersionTwo(Landroid/view/MotionEvent;)V

    goto :goto_4

    .line 1314
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->homeTouchResolution(Landroid/view/MotionEvent;)V

    .line 1334
    :goto_4
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mWindowMode:I

    const/16 v2, 0x10

    if-eq v0, v2, :cond_16

    .line 1336
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_16

    .line 1337
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const-string v0, "fs_gesture"

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/Launcher;->closeAllOverLauncherWindow(Ljava/lang/String;)V

    :cond_16
    return v1

    nop

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

    .line 1439
    iget-object v0, p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mInimizedHomeBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1440
    iget-object v0, p1, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->mInimizedHomeBounds:Landroid/graphics/Rect;

    goto/16 :goto_2

    .line 1442
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_2

    const/4 v3, 0x2

    .line 1443
    new-array v3, v3, [I

    .line 1444
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1445
    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1447
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeConsiderKeptPortrait()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1448
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1449
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 1451
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1452
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1455
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

    .line 1458
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeConsiderKeptPortrait()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1459
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1460
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_1

    .line 1462
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1463
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1465
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v4

    .line 1469
    :goto_2
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {p1, v4}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->findRemoteAnimationTargetCompat(I)Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateSource(Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V

    .line 1470
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {p1, v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->prepareAnimation(Z)V

    .line 1472
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 1473
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeConsiderKeptPortrait()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1474
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_4

    .line 1475
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1476
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 1478
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeConsiderKeptPortrait()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1479
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1480
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_3

    .line 1482
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1483
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1485
    :goto_3
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 1486
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

    .line 1488
    :cond_6
    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_9

    .line 1489
    :cond_7
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/LauncherApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherApplication;->getRecentsImpl()Lcom/miui/home/recents/BaseRecentsImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/BaseRecentsImpl;->getTaskStackViewLayoutStyle()Lcom/miui/home/recents/TaskStackViewLayoutStyle;

    move-result-object p1

    .line 1490
    invoke-virtual {p1}, Lcom/miui/home/recents/TaskStackViewLayoutStyle;->getTaskStackLayoutAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object p1

    .line 1491
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHight()I

    move-result v4

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1492
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v2}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->initTaskViewRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1493
    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTaskViewBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1495
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeConsiderKeptPortrait()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1496
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1497
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_5

    .line 1499
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1500
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1502
    :goto_5
    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v2

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1503
    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getRecentsTaskViewHeaderHeight()I

    move-result p1

    sub-int/2addr v2, p1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object p1, v0

    .line 1505
    :cond_9
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->updateTargetRect(Landroid/graphics/Rect;)V

    .line 1507
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz p1, :cond_a

    .line 1508
    invoke-virtual {p1, v1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->setIsStart(Z)V

    .line 1509
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->hideCurrentInputMethod()V

    .line 1511
    :cond_a
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->switchToScreenshot()V

    return-void
.end method

.method public onSystemUiFlagsChanged(I)V
    .locals 3

    .line 1048
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

    .line 1049
    :goto_0
    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowStatusBar:Z

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 1051
    :goto_1
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsShowNavBar:Z

    if-eq p1, v1, :cond_2

    .line 1052
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsShowNavBar:Z

    .line 1053
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->requestApplyInsets()V

    .line 1054
    sget-object p1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSystemUiFlagsChanged  mIsShowNavBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsShowNavBar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onTaskAppeared(Lcom/android/systemui/shared/recents/system/RemoteAnimationTargetCompat;)V
    .locals 1

    .line 1521
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mRecentsAnimationListenerImpl:Lcom/miui/home/recents/RecentsAnimationListenerImpl;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1522
    invoke-virtual {p1, v0, v0}, Lcom/miui/home/recents/RecentsAnimationListenerImpl;->finishControllerAsync(ZZ)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1071
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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mDisableTouch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1077
    :cond_0
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    .line 1078
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    .line 1079
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v2, :cond_1

    return v1

    .line 1085
    :cond_1
    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    invoke-direct {p0, v0, v2}, Lcom/miui/home/recents/NavStubView;->ignoreTouchPosition(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1086
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    .line 1087
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    .line 1090
    :cond_2
    invoke-static {}, Lcom/miui/home/library/utils/CPUBooster;->getInstance()Lcom/miui/home/library/utils/CPUBooster;

    move-result-object v0

    const/16 v2, 0x3e8

    invoke-virtual {v0, p1, v2}, Lcom/miui/home/library/utils/CPUBooster;->boostTouch(Landroid/view/MotionEvent;I)V

    .line 1092
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    const/16 v2, 0xff

    const/16 v3, 0x102

    const-wide/16 v4, 0x12c

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 1116
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

    .line 1117
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

    .line 1121
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView$H;->sendMessage(Landroid/os/Message;)Z

    .line 1123
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v2, "h-slide detected, sendMessage MSG_SET_GESTURE_STUB_UNTOUCHABLE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1126
    :cond_3
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetStatus:Z

    if-nez v0, :cond_a

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

    .line 1127
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_a

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mSupportHorizontalGesture:Z

    if-eqz v0, :cond_a

    .line 1128
    :cond_4
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-nez v0, :cond_a

    .line 1129
    iput-boolean v6, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    .line 1130
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_5

    const-string v2, "gesture_start"

    .line 1131
    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->notifyPowerKeeperGesture(Ljava/lang/String;)V

    .line 1133
    :cond_5
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->exitFreeFormWindowIfNeeded()V

    .line 1134
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->clearMessages()V

    .line 1135
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isLandscapeConsiderKeptPortrait()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1136
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1137
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v2, v3, v0}, Lcom/miui/home/recents/NavStubView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1139
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v2, v0}, Lcom/miui/home/recents/NavStubView$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1141
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_0

    .line 1149
    :pswitch_1
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_7

    return v6

    .line 1154
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    .line 1157
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    cmp-long v4, v7, v4

    if-gez v4, :cond_8

    iget-boolean v4, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-nez v4, :cond_8

    .line 1159
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->clearMessages()V

    .line 1161
    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurrX:F

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float/2addr v4, v5

    .line 1162
    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mCurrY:F

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    sub-float/2addr v5, v0

    .line 1164
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-nez v0, :cond_8

    .line 1165
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v7, 0x41f00000    # 30.0f

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_8

    .line 1166
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v7

    if-gtz v0, :cond_8

    .line 1167
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView$H;->sendMessage(Landroid/os/Message;)Z

    .line 1170
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

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    :cond_8
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_UP: mIsGestureStarted: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    goto :goto_0

    .line 1094
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mInitX:F

    .line 1095
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mInitY:F

    .line 1096
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_9

    .line 1097
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    .line 1098
    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 1100
    :cond_9
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 1101
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    xor-int/2addr v0, v6

    iput-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mSupportHorizontalGesture:Z

    .line 1104
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView$H;->removeMessages(I)V

    .line 1105
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    .line 1106
    invoke-virtual {v0, v2}, Lcom/miui/home/recents/NavStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1105
    invoke-virtual {v0, v2, v4, v5}, Lcom/miui/home/recents/NavStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1110
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v2, "onTouch ACTION_DOWN sendMessageDelayed MSG_CHECK_GESTURE_STUB_TOUCHABLE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_a
    :goto_0
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetStatus:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsGestureStarted:Z

    if-nez v0, :cond_b

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurrAction:I

    if-eq v0, v6, :cond_b

    const/4 v2, 0x3

    if-ne v0, v2, :cond_c

    .line 1189
    :cond_b
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1190
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v0, v3, p1}, Lcom/miui/home/recents/NavStubView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1192
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/NavStubView$H;->sendMessage(Landroid/os/Message;)Z

    return v6

    :cond_c
    return v1

    nop

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

    .line 2951
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performAppToApp, taskIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2952
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    const-string v1, "to_app"

    .line 2953
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->notifyPowerKeeperGesture(Ljava/lang/String;)V

    .line 2955
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isNeedStopBecauseRecentsRemoteAnimStartFailed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2956
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty()V

    const-string p1, "performAppToApp"

    .line 2957
    invoke-direct {p0, v1, v1, v1, p1}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    return-void

    .line 2961
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    sub-int v0, p1, v0

    .line 2962
    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    const/4 v3, 0x1

    if-nez v2, :cond_4

    .line 2963
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    sub-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2964
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->showRecents()V

    .line 2965
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object p1

    .line 2966
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v2

    .line 2967
    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {p1, v2, v4, v3}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 2968
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object p1

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v4

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/shared/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result p1

    .line 2969
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/TaskStack;->getStackTaskCount()I

    move-result v2

    add-int v4, p1, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2970
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v4

    if-nez v4, :cond_3

    if-eq v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    :cond_3
    :goto_0
    invoke-direct {p0, v3}, Lcom/miui/home/recents/NavStubView;->setIsQuickSwitching(Z)V

    move p1, v2

    goto :goto_2

    .line 2972
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskIndex:I

    if-eq p1, v2, :cond_5

    goto :goto_1

    :cond_5
    move v3, v1

    :cond_6
    :goto_1
    invoke-direct {p0, v3}, Lcom/miui/home/recents/NavStubView;->setIsQuickSwitching(Z)V

    :goto_2
    const/4 v2, 0x0

    .line 2975
    invoke-direct {p0, v2, p1}, Lcom/miui/home/recents/NavStubView;->updateSysUiFlags(FI)V

    .line 2976
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    mul-int/2addr v2, v0

    int-to-float v2, v2

    int-to-float v0, v0

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    .line 2978
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 2980
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr v2, v0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v5, v2, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 2982
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performAppToApp, from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", to="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    iget v7, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v3, v0

    move v6, v7

    invoke-direct/range {v3 .. v9}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 2984
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/recents/NavStubView;->setAnimVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;I)V

    .line 2986
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v3, 0x3eb33333    # 0.35f

    const v4, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v2, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2987
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0, v2, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2988
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0, v2, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2989
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0, v2, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2991
    iget v9, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    .line 2992
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 2993
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewFromStackIndex(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    move-object v10, v0

    .line 2995
    iget v7, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    .line 2996
    iget v8, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    .line 2997
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$NavStubView$Q6ebjeFNhm3PhWVA8tVQ5RaNUWY;

    move-object v5, v2

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/miui/home/recents/-$$Lambda$NavStubView$Q6ebjeFNhm3PhWVA8tVQ5RaNUWY;-><init>(Lcom/miui/home/recents/NavStubView;FFILcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 3027
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v2, Lcom/miui/home/recents/NavStubView$15;

    invoke-direct {v2, p0, p1}, Lcom/miui/home/recents/NavStubView$15;-><init>(Lcom/miui/home/recents/NavStubView;I)V

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3060
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToAppAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    .line 3061
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3062
    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    .line 3063
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object p1

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskIdFromStackIndex(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskId:I

    :cond_8
    const-string p1, "performAppToApp"

    .line 3065
    invoke-direct {p0, v1, v1, v1, p1}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    .line 3067
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performHomeGestureAccessibilitySwitch(Landroid/view/View;)V

    return-void
.end method

.method public performAppToHome()V
    .locals 7

    .line 2231
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "performAppToHome"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    const-string v1, "to_home"

    .line 2233
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->notifyPowerKeeperGesture(Ljava/lang/String;)V

    .line 2235
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isNeedStopBecauseRecentsRemoteAnimStartFailed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_3

    .line 2236
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->animateWallpaperZoom(Z)V

    .line 2237
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getCurRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 2238
    iget-object v2, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v2

    invoke-static {v2, v1, v0}, Lcom/miui/home/launcher/util/CoordinateTransforms;->transformCoordinate(IILandroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    .line 2240
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2241
    invoke-direct {p0, v2}, Lcom/miui/home/recents/NavStubView;->findClosingShortcutIcon(Landroid/graphics/Rect;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v3

    .line 2243
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "toHome"

    const-string v6, "gesture"

    invoke-static {v4, v5, v6}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2245
    sget-object v4, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v5, Lcom/miui/home/recents/-$$Lambda$NavStubView$mD7qB1-_RpGnV_m92wXhQrzS30k;

    invoke-direct {v5, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$mD7qB1-_RpGnV_m92wXhQrzS30k;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v4, v5}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 2266
    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v4, :cond_1

    .line 2267
    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v4}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    .line 2270
    :cond_1
    iget-boolean v4, p0, Lcom/miui/home/recents/NavStubView;->mIsShowStatusBar:Z

    if-eqz v4, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    .line 2271
    invoke-direct {p0, v4, v5}, Lcom/miui/home/recents/NavStubView;->updateSysUiFlagsDirectly(FI)V

    .line 2274
    :cond_2
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {p0, v3, v4, v2}, Lcom/miui/home/recents/NavStubView;->startAppToHomeAnim(Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    const-string v0, "performAppToHome"

    .line 2275
    invoke-direct {p0, v1, v1, v1, v0}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    goto :goto_0

    .line 2277
    :cond_3
    invoke-virtual {p0, v1}, Lcom/miui/home/recents/NavStubView;->finishAppToHome(Z)V

    .line 2278
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetLauncherProperty()V

    const-string v0, "appTouchResolution2"

    .line 2279
    invoke-direct {p0, v1, v1, v1, v0}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    .line 2282
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performHomeGestureAccessibilitySwitch(Landroid/view/View;)V

    return-void
.end method

.method public performAppToRecents()V
    .locals 1

    const/4 v0, 0x1

    .line 2731
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->performAppToRecents(Z)V

    return-void
.end method

.method public performAppToRecents(Z)V
    .locals 10

    .line 2735
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "performAppToRecents"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    const-string v1, "to_recent"

    .line 2737
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->notifyPowerKeeperGesture(Ljava/lang/String;)V

    .line 2739
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isNeedStopBecauseRecentsRemoteAnimStartFailed()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2740
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskIndex()I

    move-result v0

    .line 2742
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/RecentsView;->setCurrentTaskId(I)V

    .line 2743
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v1

    .line 2744
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->getStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v2

    .line 2745
    iget-boolean v3, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 2746
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->showRecents()V

    .line 2747
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/recents/RecentsModel;->getInstance(Landroid/content/Context;)Lcom/miui/home/recents/RecentsModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/RecentsModel;->getTaskLoader()Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 2748
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;

    move-result-object v2

    .line 2749
    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;IZ)V

    .line 2750
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v3

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mRunningTaskId:I

    invoke-virtual {v3, v5}, Lcom/android/systemui/shared/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/shared/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/shared/recents/model/Task;)I

    move-result v0

    .line 2751
    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/shared/recents/model/TaskStack;

    move-result-object v2

    .line 2753
    :cond_1
    invoke-virtual {v1, v2}, Lcom/miui/home/recents/views/TaskStackView;->initLayoutAlgorithm(Lcom/android/systemui/shared/recents/model/TaskStack;)V

    .line 2755
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "toRecents"

    const-string v5, "gesture"

    invoke-static {v2, v3, v5}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_2

    .line 2758
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterRecent(Landroid/view/View;)V

    :cond_2
    const-string p1, "performAppToRecents"

    const/4 v2, 0x0

    .line 2761
    invoke-direct {p0, v2, v2, v2, p1}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    .line 2762
    invoke-virtual {v1}, Lcom/miui/home/recents/views/TaskStackView;->getStackAlgorithm()Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;

    move-result-object p1

    .line 2763
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v2

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    invoke-virtual {p1, v2, v3, v0}, Lcom/miui/home/recents/views/TaskStackLayoutAlgorithm;->getTargetTaskViewIndex(ZII)I

    move-result p1

    .line 2764
    invoke-virtual {v1, p1}, Lcom/miui/home/recents/views/TaskStackView;->getScrollForTaskView(I)F

    move-result p1

    .line 2766
    iget-boolean v2, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    if-eqz v2, :cond_3

    .line 2767
    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateTaskViewTransY(F)V

    .line 2768
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetTaskView()V

    goto :goto_0

    .line 2770
    :cond_3
    iput-boolean v4, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetTaskView:Z

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 2774
    invoke-virtual {v1, v0, p1}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViewWithoutHeaderRectF(IF)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 2775
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v9, v2

    goto :goto_2

    .line 2776
    :cond_5
    :goto_1
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 2777
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    .line 2778
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    int-to-float v1, v1

    .line 2779
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    .line 2780
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    int-to-float v3, v3

    .line 2777
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    const/4 v2, 0x0

    .line 2782
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$38Jw5gRX_FlJLfodVpoOnRj4z4A;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$38Jw5gRX_FlJLfodVpoOnRj4z4A;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    move v9, v2

    .line 2784
    :goto_2
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    .line 2786
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewRadius:F

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v7, v0, v1

    .line 2787
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    iget v6, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v3, v0

    move-object v5, p1

    invoke-direct/range {v3 .. v9}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 2788
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getQuickSwitchOrRunningTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/views/RecentsView;->getTaskView(I)Lcom/miui/home/recents/views/TaskView;

    move-result-object v0

    .line 2790
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mMinRectWidth:F

    .line 2791
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$NG3IO879pFrk6uR-HcXpsjzoahg;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$NG3IO879pFrk6uR-HcXpsjzoahg;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 2822
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v1, Lcom/miui/home/recents/NavStubView$13;

    invoke-direct {v1, p0, v0}, Lcom/miui/home/recents/NavStubView$13;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/recents/views/TaskView;)V

    invoke-virtual {p1, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2847
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2848
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mAppToRecentsAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {p1}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    goto :goto_3

    .line 2850
    :cond_6
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performAppToHome()V

    .line 2853
    :goto_3
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performHomeGestureAccessibilitySwitch(Landroid/view/View;)V

    return-void
.end method

.method public performHomeToHome()V
    .locals 5

    .line 3431
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "performHomeToHome"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$HFhLSaUVFcfBc5azyF3cKoEey3g;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$HFhLSaUVFcfBc5azyF3cKoEey3g;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 3447
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/BlurUtils;->resetBlurWhenUseCompleteRecentsBlur(Lcom/miui/home/launcher/Launcher;Z)V

    .line 3448
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->startRecentsFadeOutAnim()V

    .line 3449
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "toHome"

    const-string v3, "gesture"

    invoke-static {v0, v2, v3}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3452
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3457
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getAlpha()F

    move-result v0

    .line 3458
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutMenuLayer;->getScaleX()F

    move-result v1

    const/4 v2, 0x2

    .line 3460
    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 3461
    iget-object v3, p0, Lcom/miui/home/recents/NavStubView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v3, 0xc8

    .line 3462
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3463
    new-instance v3, Lcom/miui/home/recents/NavStubView$19;

    invoke-direct {v3, p0, v0, v1}, Lcom/miui/home/recents/NavStubView$19;-><init>(Lcom/miui/home/recents/NavStubView;FF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3472
    new-instance v0, Lcom/miui/home/recents/NavStubView$20;

    invoke-direct {v0, p0}, Lcom/miui/home/recents/NavStubView$20;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3490
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$ormGp-hh9OtfOhs5ymFeF5N5rzg;

    invoke-direct {v1, v2}, Lcom/miui/home/recents/-$$Lambda$ormGp-hh9OtfOhs5ymFeF5N5rzg;-><init>(Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 3453
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/home/recents/NavStubView$ModeGesture;->IDLE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    const-string v0, "startHomeAnimation"

    const/4 v2, 0x0

    .line 3454
    invoke-direct {p0, v2, v2, v1, v0}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public performHomeToRecents()V
    .locals 4

    .line 3494
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "performHomeToRecents"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3495
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mReLoadTaskFinished:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3496
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->resetTaskView()V

    goto :goto_0

    .line 3498
    :cond_0
    iput-boolean v1, p0, Lcom/miui/home/recents/NavStubView;->mPendingResetTaskView:Z

    .line 3501
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "toRecents"

    const-string v3, "gesture"

    invoke-static {v0, v2, v3}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3504
    sget-object v0, Lcom/miui/home/recents/NavStubView$ModeGesture;->IDLE:Lcom/miui/home/recents/NavStubView$ModeGesture;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/NavStubView;->setModeGesture(Lcom/miui/home/recents/NavStubView$ModeGesture;)V

    const-string v0, "startHomeAnimation"

    const/4 v2, 0x0

    .line 3505
    invoke-direct {p0, v2, v2, v1, v0}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    .line 3507
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performHomeGestureAccessibilitySwitch(Landroid/view/View;)V

    return-void
.end method

.method public performRecentsRest(Z)V
    .locals 2

    .line 3632
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "performRecentsRest"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$rvHeiaYwIR0I1rHw_wWpX552H9Q;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$NavStubView$rvHeiaYwIR0I1rHw_wWpX552H9Q;-><init>(Lcom/miui/home/recents/NavStubView;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public performRecentsToHome()V
    .locals 2

    .line 3615
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "performRecentsToHome"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/NavStubView$21;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/NavStubView$21;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 3628
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performHomeGestureAccessibilitySwitch(Landroid/view/View;)V

    return-void
.end method

.method postStartNewTaskRunnable()V
    .locals 3

    .line 3087
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartNewTaskRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/NavStubView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3088
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartNewTaskRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/recents/NavStubView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public sendEvent(III)V
    .locals 6

    .line 3667
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

    .line 3672
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

    .line 3676
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/systemui/shared/recents/system/InputEventCompat;->setDisplayId(Landroid/view/InputEvent;I)V

    :try_start_0
    const-string v0, "android.hardware.input.InputManager"

    .line 3679
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v4, "getInstance"

    .line 3680
    new-array v5, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    .line 3681
    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3684
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

    .line 3685
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

    .line 3687
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

.method public setHideGestureLine(Z)V
    .locals 2

    .line 1059
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mHideGestureLine:Z

    .line 1060
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

    .line 1061
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getHotSpaceHeight()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/recents/NavStubView;->updateViewLayout(I)V

    return-void
.end method

.method public setIsShowRecents(Z)V
    .locals 0

    .line 1954
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    return-void
.end method

.method public setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 3905
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

    .line 987
    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mKeepHidden:Z

    .line 988
    iget-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mKeepHidden:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    .line 989
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 990
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz p1, :cond_2

    .line 991
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    const/4 p1, 0x0

    .line 992
    iput-object p1, p0, Lcom/miui/home/recents/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    goto :goto_1

    .line 995
    :cond_1
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public startAppToHomeAnim(Lcom/miui/home/launcher/ShortcutIcon;Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v6, p1

    move-object/from16 v0, p2

    move-object/from16 v8, p3

    .line 2373
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v2, "startAppToHomeAnim"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    invoke-direct {v9, v0}, Lcom/miui/home/recents/NavStubView;->isInvalidRectF(Landroid/graphics/RectF;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {v9, v1}, Lcom/miui/home/recents/NavStubView;->isInvalidRectF(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz v6, :cond_1

    .line 2382
    invoke-virtual/range {p1 .. p1}, Lcom/miui/home/launcher/ShortcutIcon;->getIconTransparentEdge()I

    move-result v1

    .line 2383
    invoke-virtual {v8, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 2386
    :cond_1
    iget-boolean v1, v9, Lcom/miui/home/recents/NavStubView;->mIsVertical:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    iget-object v1, v9, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 2387
    invoke-virtual {v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    move v7, v1

    goto :goto_0

    :cond_2
    iget-object v1, v9, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    .line 2388
    invoke-virtual {v1}, Lcom/miui/home/recents/util/ClipAnimationHelper;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    move v7, v1

    :goto_0
    if-eqz v6, :cond_3

    .line 2389
    invoke-static/range {p1 .. p1}, Lcom/miui/home/launcher/PathDataIconUtil;->getCornerRadiusEstimate(Lcom/miui/home/launcher/ShortcutIcon;)F

    move-result v1

    goto :goto_1

    :cond_3
    iget v1, v9, Lcom/miui/home/recents/NavStubView;->mNoIconRadius:I

    int-to-float v1, v1

    :goto_1
    mul-float v14, v1, v7

    .line 2391
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 2392
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12, v8}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 2393
    iget-object v0, v9, Lcom/miui/home/recents/NavStubView;->mClipAnimationHelper:Lcom/miui/home/recents/util/ClipAnimationHelper;

    invoke-virtual {v0, v12}, Lcom/miui/home/recents/util/ClipAnimationHelper;->modifyRectFToSource(Landroid/graphics/RectF;)V

    .line 2395
    iget-object v0, v9, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getCurrentDisplayRotation()I

    move-result v5

    .line 2397
    invoke-direct/range {p0 .. p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2398
    sget-object v10, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v13, Lcom/miui/home/recents/-$$Lambda$NavStubView$8nD11oq1zYAlX1oY_rWnxE0EfDE;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v12

    move v4, v14

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/miui/home/recents/-$$Lambda$NavStubView$8nD11oq1zYAlX1oY_rWnxE0EfDE;-><init>(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;Landroid/graphics/RectF;FILcom/miui/home/launcher/ShortcutIcon;FLandroid/graphics/Rect;)V

    invoke-virtual {v10, v13}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2404
    :cond_4
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isUseSimpleAnim()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    .line 2405
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    iget v13, v9, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v16, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    iput-object v0, v9, Lcom/miui/home/recents/NavStubView;->mFakeAppToHomeAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 2406
    iget-object v0, v9, Lcom/miui/home/recents/NavStubView;->mFakeAppToHomeAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {v9, v0, v5}, Lcom/miui/home/recents/NavStubView;->initAppToHomeAnim(Lcom/miui/home/recents/util/RectFSpringAnim;I)V

    .line 2408
    iput-boolean v2, v9, Lcom/miui/home/recents/NavStubView;->mCancelFakeAppToHomeAnim:Z

    .line 2409
    iget-object v0, v9, Lcom/miui/home/recents/NavStubView;->mFakeAppToHomeAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v2, Lcom/miui/home/recents/-$$Lambda$NavStubView$N8tDcl-XXMOA69Hq8zr7_pYgVss;

    invoke-direct {v2, v9, v5}, Lcom/miui/home/recents/-$$Lambda$NavStubView$N8tDcl-XXMOA69Hq8zr7_pYgVss;-><init>(Lcom/miui/home/recents/NavStubView;I)V

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 2415
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    iget-object v2, v9, Lcom/miui/home/recents/NavStubView;->mFakeAppToHomeAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2416
    iget-object v0, v9, Lcom/miui/home/recents/NavStubView;->mFakeAppToHomeAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    .line 2418
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$FLaN6VPHENUftxmKbcAjDn4GCLQ;

    invoke-direct {v1, v9, v6, v7, v8}, Lcom/miui/home/recents/-$$Lambda$NavStubView$FLaN6VPHENUftxmKbcAjDn4GCLQ;-><init>(Lcom/miui/home/recents/NavStubView;Lcom/miui/home/launcher/ShortcutIcon;FLandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 2430
    :cond_5
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    iget v13, v9, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    iput-object v0, v9, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 2431
    iget-object v0, v9, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {v9, v0, v5}, Lcom/miui/home/recents/NavStubView;->initAppToHomeAnim(Lcom/miui/home/recents/util/RectFSpringAnim;I)V

    .line 2432
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    iget-object v2, v9, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0, v2, v1}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2433
    invoke-direct {v9, v6, v7, v8}, Lcom/miui/home/recents/NavStubView;->startAppToHomeInGestureThread(Lcom/miui/home/launcher/ShortcutIcon;FLandroid/graphics/Rect;)V

    :goto_2
    return-void

    .line 2375
    :cond_6
    :goto_3
    invoke-virtual {v9, v2}, Lcom/miui/home/recents/NavStubView;->finishAppToHome(Z)V

    .line 2376
    sget-object v1, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAppToHomeAnim error: startRect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "   targetRect="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startBreakOpenRectFAnim()V
    .locals 10

    .line 2075
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getCurrentAnim()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_0

    .line 2077
    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->getCurrentRectF()Landroid/graphics/RectF;

    move-result-object v8

    .line 2078
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getCurRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 2079
    new-instance v9, Lcom/miui/home/recents/util/RectFSpringAnim;

    iget v5, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, v9

    move-object v2, v8

    move v4, v5

    invoke-direct/range {v1 .. v7}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    iput-object v9, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 2081
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v3, 0x3e19999a    # 0.15f

    const v4, 0x3f7d70a4    # 0.99f

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2082
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2083
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2084
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2085
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->RADIUS:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2086
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v2, Lcom/miui/home/recents/util/RectFSpringAnim;->ALPHA:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v1, v2, v4, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 2087
    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->setVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;)V

    .line 2089
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$6C0vZ9anbQmBpmv_BOLvfDFYU_0;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$6C0vZ9anbQmBpmv_BOLvfDFYU_0;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 2090
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v1, Lcom/miui/home/recents/NavStubView$9;

    invoke-direct {v1, p0, v8}, Lcom/miui/home/recents/NavStubView$9;-><init>(Lcom/miui/home/recents/NavStubView;Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2096
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    const v1, 0x3da3d70a    # 0.08f

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/miui/home/recents/util/RectFSpringAnim;->setMinimumVisibleChange(FFFF)V

    .line 2097
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/recents/breakableAnim/IconAndTaskBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2098
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mBreakOpenRectFAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    .line 2101
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHandler:Lcom/miui/home/recents/NavStubView$H;

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->finishBreakOpenAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/NavStubView$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startFirstTask()V
    .locals 10

    .line 3131
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "startFirstTask"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3137
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mAppToHomeAnim2:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->cancel()V

    .line 3138
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->finishPendingController()V

    .line 3140
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isRecentsLoaded()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 3141
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/RecentsView;->getTaskStackView()Lcom/miui/home/recents/views/TaskStackView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 3142
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

    .line 3151
    :cond_1
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->getSourceStackBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 3152
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mScreenWidth:I

    int-to-float v0, v0

    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mHorizontalGap:F

    add-float/2addr v0, v3

    const/4 v3, 0x0

    invoke-virtual {v5, v0, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 3154
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startFirstTask, from="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", to="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    new-instance v0, Lcom/miui/home/recents/util/RectFSpringAnim;

    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mCurRect:Landroid/graphics/RectF;

    iget v7, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskRadius:F

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v3, v0

    move v6, v7

    invoke-direct/range {v3 .. v9}, Lcom/miui/home/recents/util/RectFSpringAnim;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFF)V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    .line 3156
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-direct {p0, v0, v2}, Lcom/miui/home/recents/NavStubView;->setAnimVelocity(Lcom/miui/home/recents/util/RectFSpringAnim;I)V

    .line 3158
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v3, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERX:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    const v4, 0x3e4ccccd    # 0.2f

    const v5, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v3, v5, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 3159
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v3, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_CENTERY:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0, v3, v5, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 3160
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v3, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_WIDTH:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0, v3, v5, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 3161
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    sget-object v3, Lcom/miui/home/recents/util/RectFSpringAnim;->RECT_RATIO:Lcom/miui/home/recents/util/RectFSpringAnim$VelocityFloatPropertyCompat;

    invoke-virtual {v0, v3, v5, v4}, Lcom/miui/home/recents/util/RectFSpringAnim;->setAnimParam(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FF)V

    .line 3163
    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mCurTaskFullscreenProgress:F

    .line 3164
    iget v3, p0, Lcom/miui/home/recents/NavStubView;->mPer:F

    .line 3165
    iget-object v4, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v5, Lcom/miui/home/recents/-$$Lambda$NavStubView$NT2ZHtVtK0nDU4SBFZrm7gsRy0I;

    invoke-direct {v5, p0, v0, v3}, Lcom/miui/home/recents/-$$Lambda$NavStubView$NT2ZHtVtK0nDU4SBFZrm7gsRy0I;-><init>(Lcom/miui/home/recents/NavStubView;FF)V

    invoke-virtual {v4, v5}, Lcom/miui/home/recents/util/RectFSpringAnim;->addOnUpdateListener(Lcom/miui/home/recents/util/RectFSpringAnim$OnUpdateListener;)V

    .line 3172
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    new-instance v3, Lcom/miui/home/recents/NavStubView$17;

    invoke-direct {v3, p0}, Lcom/miui/home/recents/NavStubView$17;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v3}, Lcom/miui/home/recents/util/RectFSpringAnim;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3199
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mStartFirstTaskAnim:Lcom/miui/home/recents/util/RectFSpringAnim;

    invoke-virtual {v0}, Lcom/miui/home/recents/util/RectFSpringAnim;->startInGestureThread()V

    .line 3201
    iput v2, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskIndex:I

    .line 3202
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getRecentsView()Lcom/miui/home/recents/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/views/RecentsView;->getTaskIdByIndex(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/NavStubView;->mQuickSwitchTaskId:I

    const-string v0, "startFirstTask"

    .line 3204
    invoke-direct {p0, v2, v2, v1, v0}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    goto :goto_2

    .line 3143
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->OVERVIEW:Lcom/miui/home/recents/OverviewState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3144
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHomeToRecents()V

    goto :goto_1

    .line 3146
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHomeToHome()V

    :goto_1
    return-void

    .line 3206
    :cond_4
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->performHomeToHome()V

    const-string v0, "startFirstTask"

    .line 3207
    invoke-direct {p0, v2, v2, v1, v0}, Lcom/miui/home/recents/NavStubView;->finalization(ZZZLjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public startHomeFadeInAnim(J)V
    .locals 4

    .line 338
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "startHomeFadeInAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 340
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    .line 341
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;

    const v2, 0x3f7d70a4    # 0.99f

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/anim/PhysicBasedInterpolator;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 342
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 343
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/miui/home/recents/-$$Lambda$NavStubView$cLfIBdBF3CylGJCsM3KdKqi2z2Q;

    invoke-direct {p2, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$cLfIBdBF3CylGJCsM3KdKqi2z2Q;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 350
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 351
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 353
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    const/4 p2, 0x2

    new-array p2, p2, [F

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 354
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 355
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
    .locals 5

    .line 365
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "startHomeFadeOutAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 368
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/miui/home/launcher/anim/Interpolators;->CUBIC_EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 369
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 370
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$jJVzsZASEp54uPK8h9F85zT93Kg;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$jJVzsZASEp54uPK8h9F85zT93Kg;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 378
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;->getInstance()Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/miui/home/recents/breakableAnim/HomeBreakableAnimManager;->setupAnimAndBreakLast(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v3, 0x0

    iget v4, p0, Lcom/miui/home/recents/NavStubView;->mCurShortcutMenuLayerScale:F

    aput v4, v1, v3

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 380
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$nUjM5DrL1iUCDcBIsE4V3crboNQ;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/-$$Lambda$NavStubView$nUjM5DrL1iUCDcBIsE4V3crboNQ;-><init>(Lcom/miui/home/recents/NavStubView;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startRecentsFadeOutAnim()V
    .locals 10

    .line 384
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    const-string v1, "startRecentsFadeOutAnim"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsShowRecents:Z

    if-eqz v0, :cond_0

    .line 386
    new-instance v2, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mTaskViewInitRect:Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 v3, -0x1

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

.method public startRecentsStateHomeAnim(Z)V
    .locals 3

    .line 3591
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecentsStateHomeAnim: show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3592
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$Mnqs8pXr222mpf2JomtH6Gl06bc;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$NavStubView$Mnqs8pXr222mpf2JomtH6Gl06bc;-><init>(Lcom/miui/home/recents/NavStubView;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startRecentsStateRecentsAnim(Z)V
    .locals 3

    .line 3602
    sget-object v0, Lcom/miui/home/recents/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecentsStateRecentsAnim: show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    new-instance v1, Lcom/miui/home/recents/-$$Lambda$NavStubView$GG9MKwHIHvwAWappJR1pY2po3GU;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/recents/-$$Lambda$NavStubView$GG9MKwHIHvwAWappJR1pY2po3GU;-><init>(Lcom/miui/home/recents/NavStubView;Z)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startTailCatcher()V
    .locals 2

    .line 3647
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

    .line 1628
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mGestureLineProgress:F

    .line 1629
    iget-object p1, p0, Lcom/miui/home/recents/NavStubView;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget v0, p0, Lcom/miui/home/recents/NavStubView;->mGestureLineProgress:F

    invoke-virtual {p1, v0}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/NavStubView;->mGestureLineProgress:F

    .line 1630
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    invoke-virtual {p1}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mUpdateGestureLineProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1631
    sget-object p1, Lcom/miui/home/recents/TouchInteractionService;->BACKGROUND_EXECUTOR:Lcom/miui/home/library/utils/LooperExecutor;

    iget-object v0, p0, Lcom/miui/home/recents/NavStubView;->mUpdateGestureLineProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lcom/miui/home/library/utils/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updatePivotLoc(Landroid/view/MotionEvent;)V
    .locals 4

    .line 3651
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

    .line 3652
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

    .line 3653
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->isSafeArea()Z

    move-result p1

    .line 3654
    iget-boolean v0, p0, Lcom/miui/home/recents/NavStubView;->mIsSafeArea:Z

    if-eq v0, p1, :cond_1

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 3656
    invoke-virtual {p0}, Lcom/miui/home/recents/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "crossSafeArea"

    const-string v2, "gesture"

    invoke-static {v0, v1, v2}, Lcom/miui/home/recents/util/StateBroadcastUtils;->sendStateBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3658
    invoke-direct {p0}, Lcom/miui/home/recents/NavStubView;->isQuickSwitchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3659
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterRecent(Landroid/view/View;)V

    .line 3662
    :cond_0
    iput-boolean p1, p0, Lcom/miui/home/recents/NavStubView;->mIsSafeArea:Z

    :cond_1
    return-void
.end method
