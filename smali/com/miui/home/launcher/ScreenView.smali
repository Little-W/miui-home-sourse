.class public Lcom/miui/home/launcher/ScreenView;
.super Lcom/miui/launcher/views/LauncherViewGroup;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ScreenView$SavedState;,
        Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;,
        Lcom/miui/home/launcher/ScreenView$SliderTouchListener;,
        Lcom/miui/home/launcher/ScreenView$SlideBar;,
        Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;,
        Lcom/miui/home/launcher/ScreenView$IndicatorView;,
        Lcom/miui/home/launcher/ScreenView$Indicator;,
        Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_ANIMATION_DURATION:I = 0x1f4

.field private static final AUTO_HIDE_TIMEOUT_DURATION:I = 0x3e8

.field private static final BASELINE_FLING_VELOCITY:F = 2500.0f

.field private static final DAMPING:F = 0.9f

.field private static final FLING_VELOCITY_INFLUENCE:F = 0.4f

.field private static final GESTURE_PUSH_CONFIRM_DIP:F = 50.0f

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_SCREEN:I = -0x1

.field protected static final INVALID_SIZE:I = -0x1

.field public static final MAX_TOUCH_STATE:I = 0x5

.field protected static final MINIMAL_SLIDE_BAR_POINT_WIDTH:I = 0x30

.field private static final RESPONSE:F = 0.35f

.field public static final SCREEN_LAYOUT_MODE_CENTER:I = 0x1

.field public static final SCREEN_LAYOUT_MODE_CENTER_FIXED_GAP:I = 0x7

.field public static final SCREEN_LAYOUT_MODE_FIXED_GAP:I = 0x6

.field public static final SCREEN_LAYOUT_MODE_LINEAR:I = 0x8

.field public static final SCREEN_LAYOUT_MODE_NORMAL:I = 0x0

.field public static final SCREEN_LAYOUT_MODE_PREVIEW:I = 0x2

.field public static final SCREEN_LAYOUT_MODE_UNIFORM:I = 0x3

.field private static final SEEKBAR_DOT_FADE_IN_OUT_DURATION:J = 0xfaL

.field protected static final SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private static final SNAP_DIRECTION_LEFT:I = -0x1

.field private static final SNAP_DIRECTION_RIGHT:I = 0x1

.field protected static final SNAP_VELOCITY:I = 0x12c

.field public static final TOUCH_STATE_CANCLED:I = 0x5

.field public static final TOUCH_STATE_PINCHING:I = 0x4

.field public static final TOUCH_STATE_REST:I = 0x0

.field public static final TOUCH_STATE_SCROLLING:I = 0x1

.field public static final TOUCH_STATE_SLIDING:I = 0x3

.field public static final VIEW_CONFIGURATION_TOUCH_SLOP:I


# instance fields
.field protected final DEFAULT_VERTICAL_GESTURE_CONFIRM_DIST:I

.field private final PREVIEW_MODE_MAX_SCREEN_WIDTH:F

.field private final TAG:Ljava/lang/String;

.field protected mActivePointerId:I

.field private mAllowLongPress:Z

.field protected mAutoHideTimer:Ljava/lang/Runnable;

.field private mChildScreenLayoutMeasureDiffX:I

.field private mChildScreenMeasureHeight:I

.field private mChildScreenMeasureWidth:I

.field protected mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentGestureFinished:Z

.field protected mCurrentScreenIndex:I

.field private mEnableReverseDrawingMode:Z

.field private mFixedGap:I

.field protected mGestureTrigged:Z

.field mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

.field private mIgnoreCenterY:Z

.field private mIndicatorCount:I

.field protected mIsSlideBarAutoHide:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field protected mLastScrollX:I

.field private mLastScrollXInDraw:I

.field protected mLastVisibleRange:I

.field private mLayoutScreensSeamless:Z

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mLinearScrollX:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMaximumVelocity:I

.field protected mNextScreenIndex:I

.field private mOverScrollRatio:F

.field private mOvershootTension:F

.field private mPinIned:Z

.field private mPreviewModeFooter:Landroid/view/View;

.field private mPreviewModeHeader:Landroid/view/View;

.field private mPushGestureEnabled:Z

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field protected mScreenContentWidth:I

.field private mScreenCounter:I

.field private mScreenLayoutMode:I

.field private mScreenScrollLeftBound:I

.field private mScreenScrollRightBound:I

.field protected mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

.field private mScreenSnapDuration:I

.field private mScrollCurrentValue:F

.field private mScrollLeftBound:I

.field private mScrollOffset:I

.field private mScrollRightBound:I

.field private mScrollStartValue:F

.field private mScrollStartX:I

.field private mScrollTargetValue:I

.field private mScrollWholeScreen:Z

.field private mScrollX:F

.field private mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mScrollingStateStartX:I

.field private mSecondPointerStartX:F

.field private mSeekPointResId:I

.field protected mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

.field private mSnapDelta:I

.field private mTouchIntercepted:Z

.field private mTouchPointerSize:I

.field private mTouchSlop:I

.field private mTouchState:I

.field protected mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

.field private mUniformLayoutModeCurrentGap:I

.field private mUniformLayoutModeMaxGap:I

.field protected mVisibleRange:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/miui/home/launcher/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v0, 0x40a00000    # 5.0f

    .line 161
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/ScreenView;->VIEW_CONFIGURATION_TOUCH_SLOP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 425
    invoke-direct {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ScreenView_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const p1, 0x7f080542

    .line 73
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mSeekPointResId:I

    .line 80
    new-instance p1, Lcom/miui/home/launcher/ScreenView$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/ScreenView$1;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    .line 97
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42480000    # 50.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->DEFAULT_VERTICAL_GESTURE_CONFIRM_DIST:I

    const p1, 0x3e4ccccd    # 0.2f

    .line 99
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->PREVIEW_MODE_MAX_SCREEN_WIDTH:F

    const/4 p1, 0x0

    .line 100
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    .line 101
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutScreensSeamless:Z

    const v0, 0x7fffffff

    .line 102
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    .line 103
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeCurrentGap:I

    .line 104
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    .line 105
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mIgnoreCenterY:Z

    .line 107
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollOffset:I

    const/4 v1, -0x1

    .line 108
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mLastVisibleRange:I

    .line 109
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    .line 110
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    .line 111
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureHeight:I

    .line 112
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenLayoutMeasureDiffX:I

    .line 113
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    const/4 v2, 0x0

    .line 115
    iput-object v2, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    .line 116
    iput-object v2, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    .line 118
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    .line 119
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    .line 122
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollLeftBound:I

    .line 123
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollRightBound:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 124
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    .line 125
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    .line 126
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCROLL_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 131
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 137
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    .line 145
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    .line 150
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mPushGestureEnabled:Z

    .line 151
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    .line 152
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollingStateStartX:I

    .line 153
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mGestureTrigged:Z

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    .line 172
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    .line 175
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mPinIned:Z

    .line 180
    new-instance v1, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-direct {v1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    .line 181
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLastScrollX:I

    const v1, 0x3fa66666    # 1.3f

    .line 182
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mOvershootTension:F

    const/16 v1, 0x1f4

    .line 183
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSnapDuration:I

    .line 186
    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 189
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mEnableReverseDrawingMode:Z

    .line 416
    new-instance v1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    iput-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    const/4 v1, 0x0

    .line 466
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollCurrentValue:F

    .line 1144
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLastScrollXInDraw:I

    .line 1610
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchPointerSize:I

    .line 1642
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mLinearScrollX:F

    .line 1874
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollTargetValue:I

    .line 1875
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartValue:F

    .line 426
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->initScreenView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 436
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 447
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ScreenView_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const p1, 0x7f080542

    .line 73
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mSeekPointResId:I

    .line 80
    new-instance p1, Lcom/miui/home/launcher/ScreenView$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/ScreenView$1;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    .line 97
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x42480000    # 50.0f

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->DEFAULT_VERTICAL_GESTURE_CONFIRM_DIST:I

    const p1, 0x3e4ccccd    # 0.2f

    .line 99
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->PREVIEW_MODE_MAX_SCREEN_WIDTH:F

    const/4 p1, 0x0

    .line 100
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    .line 101
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutScreensSeamless:Z

    const p2, 0x7fffffff

    .line 102
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    .line 103
    iget p3, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeCurrentGap:I

    .line 104
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    .line 105
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mIgnoreCenterY:Z

    .line 107
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollOffset:I

    const/4 p3, -0x1

    .line 108
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mLastVisibleRange:I

    .line 109
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    .line 110
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    .line 111
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureHeight:I

    .line 112
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenLayoutMeasureDiffX:I

    .line 113
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    .line 116
    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    .line 118
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    .line 119
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    .line 122
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollLeftBound:I

    .line 123
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollRightBound:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 124
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    .line 125
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    .line 126
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCROLL_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p2, p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 131
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 137
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    .line 145
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    .line 150
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mPushGestureEnabled:Z

    .line 151
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    .line 152
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollingStateStartX:I

    .line 153
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mGestureTrigged:Z

    const/4 p2, 0x1

    .line 157
    iput-boolean p2, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    .line 172
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    .line 175
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mPinIned:Z

    .line 180
    new-instance p3, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-direct {p3}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    .line 181
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLastScrollX:I

    const p3, 0x3fa66666    # 1.3f

    .line 182
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mOvershootTension:F

    const/16 p3, 0x1f4

    .line 183
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSnapDuration:I

    .line 186
    new-instance p3, Landroid/animation/LayoutTransition;

    invoke-direct {p3}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 189
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mEnableReverseDrawingMode:Z

    .line 416
    new-instance p3, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    iput-object p3, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    const/4 p3, 0x0

    .line 466
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mScrollCurrentValue:F

    .line 1144
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLastScrollXInDraw:I

    .line 1610
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mTouchPointerSize:I

    .line 1642
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mLinearScrollX:F

    .line 1874
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollTargetValue:I

    .line 1875
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartValue:F

    .line 448
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->initScreenView()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/ScreenView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->startHideSlideBar()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/ScreenView;F)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->isOverScroll(F)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/ScreenView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mMaximumVelocity:I

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/ScreenView;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollX:F

    return p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/ScreenView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    return p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/ScreenView;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->updateSeekPoints(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/ScreenView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    return p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/ScreenView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchPointerSize:I

    return p0
.end method

.method static synthetic access$902(Lcom/miui/home/launcher/ScreenView;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mPinIned:Z

    return p1
.end method

.method private calibrateCurrentScreenIndex(I)I
    .locals 3

    .line 838
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 840
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    if-eqz v0, :cond_2

    .line 842
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 843
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    rem-int v2, p1, v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    goto :goto_0

    .line 845
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    .line 847
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/ScreenView;->getSnapToScreenIndex(III)I

    move-result p1

    goto :goto_2

    .line 848
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    if-nez p1, :cond_3

    .line 850
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    sub-int/2addr p1, v1

    :cond_3
    :goto_2
    return p1
.end method

.method private checkVerticalFling(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1635
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-nez v0, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mMaximumVelocity:I

    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getYVelocity(III)F

    move-result v0

    float-to-int v0, v0

    .line 1638
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/home/launcher/ScreenView;->onVerticalFling(IFF)V

    :cond_0
    return-void
.end method

.method private createSeekPoint()Landroid/widget/ImageView;
    .locals 2

    .line 2130
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2131
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2132
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mSeekPointResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2133
    new-instance v1, Lcom/miui/home/launcher/ScreenView$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ScreenView$3;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x8

    .line 2139
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x2

    .line 2140
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    return-object v0
.end method

.method private getFixedGapModeStartPoint()I
    .locals 4

    .line 1267
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1268
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1269
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private final getScreenScrollX(I)I
    .locals 2

    .line 1050
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrollable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1051
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result p1

    return p1

    .line 1052
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    if-ge v0, v1, :cond_1

    .line 1053
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollOffset:I

    neg-int p1, p1

    return p1

    .line 1055
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreenSnapX(I)I

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollOffset:I

    sub-int/2addr p1, v0

    return p1
.end method

.method private final getScreenSnapX(I)I
    .locals 4

    .line 1059
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreenLayoutX(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenLayoutMeasureDiffX:I

    sub-int/2addr p1, v0

    .line 1060
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1061
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    if-ge v0, v1, :cond_0

    .line 1062
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    goto :goto_0

    .line 1064
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 1067
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr v3, v2

    sub-int/2addr v0, v3

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    mul-int/2addr v2, v1

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 1069
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->getFixedGapModeStartPoint()I

    move-result v0

    sub-int/2addr p1, v0

    :cond_3
    :goto_0
    return p1
.end method

.method private getSnapToScreenIndex(III)I
    .locals 1

    mul-int/2addr p3, p2

    add-int/2addr p1, p3

    .line 857
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollLeftBound:I

    iget p3, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollRightBound:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {p1, p2, p3}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(III)I

    move-result p1

    return p1
.end method

.method private initScreenView()V
    .locals 3

    const/4 v0, 0x1

    .line 455
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 457
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 458
    sget v1, Lcom/miui/home/launcher/ScreenView;->VIEW_CONFIGURATION_TOUCH_SLOP:I

    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mTouchSlop:I

    .line 459
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setMaximumSnapVelocity(I)V

    .line 461
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 462
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$ScreenView$KNeqMPLtcofq4O5LH4hXq5MF2Ak;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$ScreenView$KNeqMPLtcofq4O5LH4hXq5MF2Ak;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 463
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$ScreenView$nJdWMXA2TtyHzoqt7eWiXp8g4q4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$ScreenView$nJdWMXA2TtyHzoqt7eWiXp8g4q4;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method private isOverScroll(F)Z
    .locals 3

    .line 2348
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2349
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollLeftBound()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v1, v1

    .line 2350
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

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

.method public static synthetic lambda$initScreenView$0(Lcom/miui/home/launcher/ScreenView;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 462
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->onScrollXAnimationEnd()V

    return-void
.end method

.method public static synthetic lambda$initScreenView$1(Lcom/miui/home/launcher/ScreenView;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 463
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollCurrentValue:F

    return-void
.end method

.method private onTouchEventUnique(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1612
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1614
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    const/4 v1, 0x5

    if-eq v1, v0, :cond_0

    .line 1615
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchPointerSize:I

    .line 1616
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1619
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-nez v0, :cond_2

    .line 1620
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1621
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->onScrollInteractionBegin()V

    const/4 v0, 0x1

    .line 1622
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1624
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getVerticalGesture()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1626
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/ScreenView;->onVerticalGesture(ILandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1627
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private scrollToFollowMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1646
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1648
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1649
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1651
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 1652
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 1653
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->recalculateDeltaX(F)F

    move-result v0

    .line 1654
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    .line 1655
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mLinearScrollX:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLinearScrollX:F

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    .line 1657
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mLinearScrollX:F

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->recalculateOverScroll(F)F

    move-result p1

    .line 1658
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ScreenView;->scrollTo(II)V

    goto :goto_0

    .line 1660
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->awakenScrollBars()Z

    :goto_0
    return-void
.end method

.method private setLayoutTransition()V
    .locals 12

    const-string v0, "scaleX"

    const/4 v1, 0x2

    .line 496
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v2, "scaleY"

    .line 497
    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 498
    new-array v3, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 499
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 500
    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v1, v5, v6}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 501
    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v5, 0xfa

    invoke-virtual {v2, v1, v5, v6}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    const-string v2, "scaleX"

    .line 503
    new-array v3, v1, [F

    fill-array-data v3, :array_2

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v3, "scaleY"

    .line 504
    new-array v7, v1, [F

    fill-array-data v7, :array_3

    invoke-static {v3, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 505
    new-array v7, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v7, v4

    aput-object v3, v7, v0

    invoke-static {p0, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 506
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v7, 0x3

    invoke-virtual {v3, v7, v5, v6}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 507
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v7, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    const-string v2, "left"

    .line 509
    new-array v3, v1, [I

    fill-array-data v3, :array_4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v3, "top"

    .line 510
    new-array v5, v1, [I

    fill-array-data v5, :array_5

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const-string v5, "right"

    .line 511
    new-array v6, v1, [I

    fill-array-data v6, :array_6

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    const-string v6, "bottom"

    .line 512
    new-array v8, v1, [I

    fill-array-data v8, :array_7

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    const/4 v8, 0x4

    .line 514
    new-array v9, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v9, v4

    aput-object v3, v9, v0

    aput-object v5, v9, v1

    aput-object v6, v9, v7

    invoke-static {p0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 516
    iget-object v10, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v10, v4, v9}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 517
    iget-object v9, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 518
    invoke-virtual {v9, v1}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v10

    .line 517
    invoke-virtual {v9, v4, v10, v11}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 520
    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v8, v4

    aput-object v3, v8, v0

    aput-object v5, v8, v1

    aput-object v6, v8, v7

    invoke-static {p0, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 522
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v0, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 523
    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 524
    invoke-virtual {v2, v7}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v5

    .line 523
    invoke-virtual {v2, v0, v5, v6}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 525
    new-instance v2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 526
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v1, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 527
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v7, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 528
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v4, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 529
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v0, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 530
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v4}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

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
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private showSlideBar()V
    .locals 3

    .line 743
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mIsSlideBarAutoHide:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 748
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$SlideBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 750
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setAlpha(F)V

    .line 751
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setVisibility(I)V

    .line 753
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-nez v0, :cond_1

    .line 754
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/home/launcher/ScreenView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private skipToEnd()V
    .locals 1

    .line 1102
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_0
    return-void
.end method

.method private snapByVelocity(I)V
    .locals 3

    .line 1757
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrollable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1761
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mMaximumVelocity:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getXVelocity(III)F

    move-result p1

    float-to-int p1, p1

    .line 1762
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getXFlingDirection(F)I

    move-result v0

    .line 1763
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ScreenView;->snapByVelocity(II)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private startHideSlideBar()V
    .locals 3

    .line 759
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mIsSlideBarAutoHide:Z

    if-nez v0, :cond_0

    return-void

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$SlideBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 763
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 764
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/ScreenView$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ScreenView$2;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    .line 765
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private throwRemoveIndicatorException()V
    .locals 2

    .line 2025
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove indicator directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateIndicatorPositions(IZ)V
    .locals 12

    .line 865
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getWidth()I

    move-result v0

    if-lez v0, :cond_8

    .line 866
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    .line 867
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getWidth()I

    move-result v1

    .line 868
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    move v4, p1

    move p1, v3

    .line 870
    :goto_0
    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    if-ge p1, v5, :cond_8

    add-int v5, p1, v0

    .line 871
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 872
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 874
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 875
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 880
    iget v9, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_6

    and-int/lit8 v10, v9, 0x7

    and-int/lit8 v9, v9, 0x70

    const/4 v11, 0x1

    if-eq v10, v11, :cond_2

    const/4 v11, 0x3

    if-eq v10, v11, :cond_1

    const/4 v11, 0x5

    if-eq v10, v11, :cond_0

    .line 898
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_0
    sub-int v10, v1, v7

    .line 895
    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v10, v11

    goto :goto_1

    .line 888
    :cond_1
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_2
    sub-int v10, v1, v7

    .line 891
    div-int/lit8 v10, v10, 0x2

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v11

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v10, v11

    :goto_1
    const/16 v11, 0x10

    if-eq v9, v11, :cond_5

    const/16 v11, 0x30

    if-eq v9, v11, :cond_4

    const/16 v11, 0x50

    if-eq v9, v11, :cond_3

    .line 913
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_3
    sub-int v9, v2, v8

    .line 910
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v6, v9, v6

    goto :goto_2

    .line 903
    :cond_4
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_5
    sub-int v9, v2, v8

    .line 906
    div-int/lit8 v9, v9, 0x2

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v11

    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v6, v9, v6

    goto :goto_2

    :cond_6
    move v6, v3

    move v10, v6

    :goto_2
    if-nez p2, :cond_7

    .line 916
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    if-lez v9, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    if-lez v9, :cond_7

    int-to-float v6, v4

    .line 917
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3

    :cond_7
    add-int/2addr v10, v3

    add-int/2addr v7, v10

    add-int/2addr v8, v6

    .line 920
    invoke-virtual {v5, v10, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    move v4, v3

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private updateScreenOffset()V
    .locals 1

    const/4 v0, 0x0

    .line 861
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollOffset:I

    return-void
.end method

.method private updateSeekPoints(I)V
    .locals 5

    .line 2145
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_2

    .line 2146
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2148
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicatorPoint(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    if-lt v2, p1, :cond_0

    .line 2150
    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    add-int/2addr v4, p1

    if-ge v2, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateSlidePointPosition(I)V
    .locals 7

    .line 932
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    .line 933
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    .line 934
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getSnapBound()[I

    move-result-object v1

    const/4 v2, 0x1

    .line 935
    aget v3, v1, v2

    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 936
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ScreenView$SlideBar;->getSlideWidth()I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    .line 938
    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    add-int/2addr v4, v5

    div-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_0

    return-void

    :cond_0
    int-to-float v5, v3

    div-float v4, v5, v4

    const/high16 v6, 0x42400000    # 48.0f

    .line 940
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 942
    iget v6, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr v6, v0

    const/4 v0, 0x0

    if-gt v6, v3, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    .line 947
    aget v6, v1, v0

    int-to-float v6, v6

    sub-float/2addr p1, v6

    aget v2, v1, v2

    aget v1, v1, v0

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr p1, v1

    mul-float/2addr p1, v5

    .line 949
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ScreenView$SlideBar;->getSlidePaddingLeft()I

    move-result v1

    float-to-int p1, p1

    add-int/2addr p1, v1

    .line 951
    :goto_0
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    move p1, v0

    move v4, v5

    :cond_2
    int-to-float v1, p1

    add-float/2addr v4, v1

    .line 955
    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ScreenView$SlideBar;->getSlidePaddingLeft()I

    move-result v2

    add-int/2addr v3, v2

    int-to-float v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 956
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    float-to-int v4, v2

    invoke-virtual {v3, p1, v4}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setPosition(II)V

    sub-float/2addr v2, v1

    cmpl-float p1, v2, v5

    if-nez p1, :cond_3

    .line 958
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setVisibility(I)V

    goto :goto_1

    .line 960
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setVisibility(I)V

    .line 962
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isHardwareAccelerated()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 963
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ScreenView$SlideBar;->invalidate()V

    :cond_4
    return-void
.end method


# virtual methods
.method public abandonGenericScrollEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2450
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrollingOrSlidingState()Z

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

.method public addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    .line 2029
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    const/4 v0, -0x1

    .line 2030
    invoke-super {p0, p1, v0, p2}, Lcom/miui/launcher/views/LauncherViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1957
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-gez p2, :cond_0

    goto :goto_0

    .line 1962
    :cond_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1965
    :goto_0
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p2, :cond_1

    .line 1966
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->createSeekPoint()Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2, v1, v0, v2}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->addScreenIndicatorPoint(Landroid/view/View;ILandroid/widget/LinearLayout$LayoutParams;)V

    .line 1969
    :cond_1
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    .line 1970
    invoke-super {p0, p1, v0, p3}, Lcom/miui/launcher/views/LauncherViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public allowLongPress()Z
    .locals 1

    .line 2104
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    return v0
.end method

.method public appendScreenTransitionType(I)V
    .locals 1

    .line 2179
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->appendTransitionType(I)V

    .line 2180
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->getOverShotTension()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setOvershootTension(F)V

    .line 2181
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->getScreenSnapDuration()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setScreenSnapDuration(I)V

    return-void
.end method

.method protected beforeSnapToScreen(I)V
    .locals 0

    return-void
.end method

.method public cancelScroll()V
    .locals 2

    .line 1095
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const-string v1, "cancelScroll"

    .line 1097
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 1148
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastScrollXInDraw:I

    .line 1149
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/ScreenView;->updateIndicatorPositions(IZ)V

    .line 1150
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ScreenView;->updateSlidePointPosition(I)V

    return-void
.end method

.method public correctCurrentScreen(Z)V
    .locals 2

    .line 1389
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getDefaultScreenIndex()I

    move-result v0

    .line 1390
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-eqz v1, :cond_1

    .line 1391
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ScreenView;->calibrateCurrentScreenIndex(I)I

    move-result v0

    .line 1393
    :cond_1
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_3

    .line 1394
    :cond_2
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreen(I)V

    :cond_3
    return-void
.end method

.method protected createIndicatorView()Lcom/miui/home/launcher/ScreenView$IndicatorView;
    .locals 2

    .line 558
    new-instance v0, Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;

    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1586
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1587
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchDraw:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 1452
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    if-lez v1, :cond_1

    sub-int/2addr v1, v0

    .line 1453
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    return v0

    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1457
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    .line 1458
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    return v0

    .line 1462
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 1424
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->updateChildStaticTransformation(Landroid/view/View;)V

    .line 1425
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ScreenView;->superDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected finishCurrentGesture()V
    .locals 2

    .line 1791
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    const/4 v0, 0x1

    .line 1792
    iput-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentGestureFinished:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1793
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public getAllScreens()[Landroid/view/View;
    .locals 3

    .line 2074
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    .line 2075
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2076
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    .line 2211
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mEnableReverseDrawingMode:Z

    if-eqz v0, :cond_0

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    return p2
.end method

.method public getChildIndex(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    .line 1892
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1893
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getChildScreenMeasureWidth()I
    .locals 1

    .line 1289
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    return v0
.end method

.method public getCurrentScreen()Landroid/view/View;
    .locals 1

    .line 1913
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenIndex()I
    .locals 2

    .line 1906
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1909
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    return v0
.end method

.method public getDefaultScreenIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getMaxVelocity()I
    .locals 1

    .line 2441
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mMaximumVelocity:I

    return v0
.end method

.method public getScreen(I)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_1

    .line 1946
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1949
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getScreenCount()I
    .locals 1

    .line 1888
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    return v0
.end method

.method protected getScreenIndexByPoint(II)I
    .locals 4

    .line 808
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getWidth()I

    move-result p2

    div-int p2, p1, p2

    .line 810
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 811
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getChildCount()I

    move-result p2

    const/4 v0, -0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x0

    .line 814
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->getScreenLayoutX(I)I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_1

    return p2

    .line 817
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->getScreenLayoutX(I)I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-le p1, v1, :cond_2

    .line 818
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 820
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_4

    .line 821
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->getScreenLayoutX(I)I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-le p1, v1, :cond_3

    add-int/lit8 v1, p2, 0x1

    .line 822
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->getScreenLayoutX(I)I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    if-gt p1, v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return v0

    .line 828
    :cond_5
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    mul-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getWidth()I

    move-result v0

    rem-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    div-int/2addr p1, v0

    add-int/2addr p2, p1

    .line 829
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 830
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p1

    sub-int/2addr p1, p2

    add-int/lit8 p2, p1, -0x1

    .line 834
    :cond_6
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method protected getScreenLayoutX(I)I
    .locals 11

    .line 1188
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 1189
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getVisualPosition(I)I

    move-result v0

    .line 1192
    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move p1, v3

    goto/16 :goto_7

    .line 1246
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result p1

    :goto_0
    if-ge v1, v0, :cond_d

    .line 1248
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1249
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 1250
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr p1, v2

    .line 1251
    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    add-int/2addr p1, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1238
    :pswitch_2
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->getFixedGapModeStartPoint()I

    move-result p1

    .line 1239
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    goto/16 :goto_7

    .line 1242
    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result p1

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int v5, v2, v4

    sub-int v5, v1, v5

    add-int/lit8 v6, v2, -0x1

    iget v7, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    mul-int/2addr v6, v7

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr p1, v5

    rem-int v5, v0, v2

    add-int/2addr v4, v7

    mul-int/2addr v5, v4

    add-int/2addr p1, v5

    div-int v2, v0, v2

    mul-int/2addr v2, v1

    add-int/2addr p1, v2

    goto/16 :goto_7

    .line 1229
    :pswitch_4
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    div-int/2addr p1, v1

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeCurrentGap:I

    if-le v1, v4, :cond_2

    .line 1231
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeCurrentGap:I

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeCurrentGap:I

    .line 1233
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result p1

    int-to-float p1, p1

    int-to-float v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeCurrentGap:I

    int-to-float v4, v2

    mul-float/2addr v1, v4

    add-float/2addr p1, v1

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int v4, v1, v0

    int-to-float v4, v4

    add-float/2addr p1, v4

    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    mul-int/2addr v1, v2

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    int-to-float v1, v4

    add-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    goto/16 :goto_7

    .line 1204
    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object p1

    .line 1205
    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    div-int/2addr v2, v5

    .line 1206
    iget-object v5, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    if-ne p1, v5, :cond_3

    .line 1207
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result v1

    add-int/2addr p1, v1

    goto/16 :goto_7

    .line 1208
    :cond_3
    iget-object v5, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    if-ne p1, v5, :cond_5

    .line 1209
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v1

    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v1, v4

    .line 1210
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 1211
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1212
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v1

    goto/16 :goto_7

    :cond_4
    move p1, v1

    goto/16 :goto_7

    .line 1215
    :cond_5
    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v5, v5

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 1216
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v6

    iget-object v7, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    if-nez v7, :cond_6

    move v7, v1

    goto :goto_1

    :cond_6
    move v7, v4

    :goto_1
    sub-int/2addr v6, v7

    .line 1217
    iget-object v7, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    if-nez v7, :cond_7

    move v7, v1

    goto :goto_2

    :cond_7
    move v7, v4

    :goto_2
    sub-int/2addr v6, v7

    .line 1218
    iget-object v7, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    if-nez v7, :cond_8

    move v7, v1

    goto :goto_3

    :cond_8
    move v7, v2

    .line 1219
    :goto_3
    iget-object v8, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    if-nez v8, :cond_9

    move v8, v1

    goto :goto_4

    :cond_9
    move v8, v2

    .line 1220
    :goto_4
    iget v9, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    sub-int/2addr v9, v7

    sub-int/2addr v9, v8

    int-to-float v8, v9

    .line 1221
    iget v10, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v10, v10

    sub-float/2addr v8, v10

    sub-int/2addr v6, v4

    int-to-float v10, v6

    div-float/2addr v8, v10

    int-to-float v5, v5

    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    float-to-int v5, v5

    .line 1223
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v8, v10

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    if-eqz v10, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr v2, p1

    div-int/lit8 p1, v2, 0x2

    goto :goto_5

    :cond_a
    move p1, v1

    :goto_5
    add-int/2addr v8, p1

    add-int/2addr v8, v7

    mul-int/2addr v6, v5

    sub-int/2addr v9, v6

    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    sub-int/2addr v9, p1

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 1225
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    if-nez p1, :cond_b

    goto :goto_6

    :cond_b
    move v1, v4

    :goto_6
    sub-int p1, v0, v1

    mul-int/2addr p1, v5

    add-int/2addr p1, v8

    goto :goto_7

    .line 1194
    :pswitch_6
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    if-gt p1, v1, :cond_c

    .line 1195
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr p1, v2

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    mul-int/2addr v2, v0

    add-int p1, v1, v2

    goto :goto_7

    .line 1198
    :cond_c
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getMeasuredWidth()I

    move-result p1

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    div-int v1, v0, v1

    mul-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result v1

    add-int/2addr p1, v1

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    mul-int v5, v2, v4

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    rem-int v1, v0, v4

    mul-int/2addr v1, v2

    add-int/2addr p1, v1

    :cond_d
    :goto_7
    if-ne p1, v3, :cond_e

    .line 1258
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result p1

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    .line 1259
    iget-boolean v1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutScreensSeamless:Z

    if-nez v1, :cond_e

    .line 1260
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    div-int/2addr v1, v0

    add-int/2addr p1, v1

    .line 1263
    :cond_e
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenLayoutMeasureDiffX:I

    add-int/2addr p1, v0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected getScreenLayoutY(I)I
    .locals 2

    .line 1273
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingTop()I

    move-result p1

    .line 1274
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mIgnoreCenterY:Z

    if-eqz v0, :cond_0

    return p1

    .line 1276
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1282
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureHeight:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    :goto_0
    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected getScreenSnapDuration()I
    .locals 1

    .line 1867
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSnapDuration:I

    return v0
.end method

.method public getScreenSnapMaxDuration()I
    .locals 2

    .line 204
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSnapDuration:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getScreenTransitionType()I
    .locals 1

    .line 2168
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->getTransitionType()I

    move-result v0

    return v0
.end method

.method protected getScrollLeftBound()I
    .locals 1

    .line 2385
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollLeftBound:I

    return v0
.end method

.method protected getScrollRightBound()I
    .locals 1

    .line 2389
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollRightBound:I

    return v0
.end method

.method protected getScrollStartX()I
    .locals 1

    .line 2248
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    return v0
.end method

.method protected getSnapBound()[I
    .locals 5

    .line 975
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 976
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v0, v0

    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 977
    :goto_0
    new-array v2, v2, [I

    const/4 v3, 0x1

    .line 978
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v4

    sub-int/2addr v4, v0

    aput v4, v2, v3

    .line 979
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollLeftBound()I

    move-result v3

    add-int/2addr v3, v0

    aput v3, v2, v1

    return-object v2
.end method

.method protected getSnapDuration(II)I
    .locals 2

    .line 1857
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSnapDuration:I

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    div-int/2addr p1, v0

    .line 1858
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenSnapMaxDuration()I

    move-result v0

    .line 1857
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lez p2, :cond_0

    int-to-float v0, p1

    int-to-float p2, p2

    const v1, 0x451c4000    # 2500.0f

    div-float/2addr p2, v1

    div-float/2addr v0, p2

    const p2, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, p2

    float-to-int p2, v0

    add-int/2addr p1, p2

    :cond_0
    return p1
.end method

.method protected getSnapOverScroll()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getSnapUnitIndex(I)I
    .locals 1

    .line 1785
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr v0, p1

    .line 1786
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result p1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    div-int/2addr p1, v0

    .line 1787
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    :cond_0
    return p1
.end method

.method public getTouchState()I
    .locals 1

    .line 1466
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    return v0
.end method

.method public getUniformLayoutModeCurrentGap()I
    .locals 1

    .line 1165
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeCurrentGap:I

    return v0
.end method

.method public getUniformLayoutModeMaxGap()I
    .locals 1

    .line 1169
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    return v0
.end method

.method public getVisibleRange()I
    .locals 1

    .line 1953
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    return v0
.end method

.method getVisualPosition(I)I
    .locals 4

    .line 1173
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1184
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x1

    :cond_1
    return p1

    .line 1175
    :cond_2
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1176
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    if-gt v0, v2, :cond_3

    .line 1177
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    return v0

    .line 1179
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    div-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    .line 1180
    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    mul-int/2addr v2, v0

    sub-int/2addr v2, v1

    sub-int/2addr v2, p1

    return v2

    :cond_5
    return p1
.end method

.method protected interceptDownWhenScrolling()Z
    .locals 2

    .line 1514
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartValue:F

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollCurrentValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const-string v1, "Scroll is not update, abort the event"

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected isScrollable()Z
    .locals 3

    .line 1075
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return v1

    .line 1080
    :pswitch_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-nez v0, :cond_1

    .line 1081
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    if-le v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v0

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    if-ge v0, v2, :cond_1

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isScrolling()Z
    .locals 1

    .line 1091
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isScrollingOrSlidingState()Z
    .locals 3

    .line 2445
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected isSpringOverScroll()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1293
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherViewGroup;->onAttachedToWindow()V

    .line 1294
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->computeScroll()V

    .line 1295
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->showSlideBar()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 2455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    .line 2456
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->abandonGenericScrollEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2462
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    and-int/2addr v0, v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 2464
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    move v2, v0

    move v0, v3

    goto :goto_0

    .line 2466
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    const/16 v2, 0xa

    .line 2467
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 2469
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    return v1

    :cond_2
    cmpl-float v4, v2, v3

    if-nez v4, :cond_3

    cmpl-float v5, v0, v3

    if-eqz v5, :cond_9

    .line 2473
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/common/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    const/4 v5, 0x0

    if-eqz p1, :cond_4

    cmpg-float p1, v2, v3

    if-ltz p1, :cond_6

    cmpg-float p1, v0, v3

    if-gez p1, :cond_5

    goto :goto_1

    :cond_4
    if-gtz v4, :cond_6

    cmpl-float p1, v0, v3

    if-lez p1, :cond_5

    goto :goto_1

    :cond_5
    move p1, v5

    goto :goto_2

    :cond_6
    :goto_1
    move p1, v1

    :goto_2
    if-eqz p1, :cond_7

    .line 2477
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    add-int/2addr p1, v1

    goto :goto_3

    .line 2479
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_3
    if-ltz p1, :cond_8

    .line 2481
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_8

    .line 2482
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    return v1

    :cond_8
    return v5

    .line 2489
    :cond_9
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 2400
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2401
    const-class v0, Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 2406
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2407
    const-class v0, Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2408
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2409
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_1

    const/16 v0, 0x1000

    .line 2410
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2412
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/16 v0, 0x2000

    .line 2413
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1567
    :pswitch_0
    invoke-virtual {p0, p1, v4}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 1525
    :pswitch_1
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 1526
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    .line 1528
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1570
    :pswitch_2
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const-string v1, "oninterceput up"

    .line 1571
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->checkVerticalFling(Landroid/view/MotionEvent;)V

    .line 1572
    invoke-virtual {p0, p1, v4}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1533
    :pswitch_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1534
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1535
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1536
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->recycle()V

    .line 1538
    iput-boolean v4, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentGestureFinished:Z

    .line 1539
    iput-boolean v4, p0, Lcom/miui/home/launcher/ScreenView;->mTouchIntercepted:Z

    .line 1542
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    .line 1543
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    .line 1544
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionY:F

    .line 1545
    iput-boolean v4, p0, Lcom/miui/home/launcher/ScreenView;->mPinIned:Z

    .line 1547
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onIntercept:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mScrollTargetValue:I

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/home/launcher/ScreenView;->mScrollCurrentValue:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1548
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1549
    iput-boolean v3, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    .line 1550
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const-string v1, "not intercept"

    goto :goto_0

    .line 1557
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->interceptDownWhenScrolling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1558
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->cancelScroll()V

    .line 1559
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const-string v1, "onIntercept on Scrolling"

    .line 1560
    invoke-virtual {p0, p1, v3}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    :cond_2
    :goto_0
    const/4 v0, 0x2

    .line 1576
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-eq v0, v1, :cond_3

    .line 1577
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1580
    :cond_3
    iget-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentGestureFinished:Z

    if-nez p1, :cond_5

    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :cond_5
    :goto_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 1399
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/miui/home/launcher/ScreenView;->doSetFrame(IIII)Z

    .line 1401
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->updateIndicatorPositions(IZ)V

    .line 1403
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 1406
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->refreshScrollBound()Z

    move-result p2

    .line 1407
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->correctCurrentScreen(Z)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_3

    .line 1410
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_1

    .line 1413
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_2

    .line 1414
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->getScreenLayoutY(I)I

    move-result p4

    .line 1415
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->getScreenLayoutX(I)I

    move-result p5

    .line 1417
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p5

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p4

    .line 1416
    invoke-virtual {p3, p5, p4, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 1311
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 1314
    :goto_0
    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    if-ge v2, v5, :cond_0

    add-int v5, v2, v0

    .line 1315
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1317
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1320
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1319
    invoke-static {p1, v7, v8}, Lcom/miui/home/launcher/ScreenView;->getChildMeasureSpec(III)I

    move-result v7

    .line 1322
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1321
    invoke-static {p2, v8, v6}, Lcom/miui/home/launcher/ScreenView;->getChildMeasureSpec(III)I

    move-result v6

    .line 1324
    invoke-virtual {v5, v7, v6}, Landroid/view/View;->measure(II)V

    .line 1325
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1326
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    move v5, v2

    move v6, v5

    :goto_1
    if-ge v2, v0, :cond_1

    .line 1333
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1334
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 1337
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1336
    invoke-static {p1, v9, v10}, Lcom/miui/home/launcher/ScreenView;->getChildMeasureSpec(III)I

    move-result v9

    .line 1340
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1338
    invoke-static {p2, v10, v8}, Lcom/miui/home/launcher/ScreenView;->getChildMeasureSpec(III)I

    move-result v8

    .line 1343
    invoke-virtual {v7, v9, v8}, Landroid/view/View;->measure(II)V

    .line 1344
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1345
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1347
    :cond_1
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1348
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1351
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v2, v4

    .line 1352
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    .line 1355
    invoke-static {v2, p1}, Lcom/miui/home/launcher/ScreenView;->resolveSize(II)I

    move-result v2

    .line 1356
    invoke-static {v3, p2}, Lcom/miui/home/launcher/ScreenView;->resolveSize(II)I

    move-result p2

    .line 1354
    invoke-virtual {p0, v2, p2}, Lcom/miui/home/launcher/ScreenView;->setMeasuredDimension(II)V

    if-lez v0, :cond_6

    .line 1359
    iput v5, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    .line 1360
    iput v6, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureHeight:I

    .line 1361
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenLayoutMeasureDiffX:I

    .line 1362
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    .line 1363
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLastVisibleRange:I

    .line 1365
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    if-lez p1, :cond_5

    .line 1366
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-eq p2, v2, :cond_4

    const/4 v2, 0x7

    if-ne p2, v2, :cond_2

    goto :goto_3

    :cond_2
    const/16 v2, 0x8

    if-ne p2, v2, :cond_3

    .line 1369
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    move p1, v1

    :goto_2
    if-ge v1, v0, :cond_5

    .line 1370
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    if-ge p1, p2, :cond_5

    .line 1371
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    add-int/2addr p2, v2

    add-int/2addr p1, p2

    .line 1372
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    sub-int/2addr p2, p1

    add-int/2addr p2, v2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenLayoutMeasureDiffX:I

    .line 1373
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    add-int/2addr p2, v3

    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1376
    :cond_3
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    div-int/2addr p2, p1

    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    .line 1377
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    if-ne p1, v3, :cond_5

    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    if-le p1, p2, :cond_5

    .line 1378
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    .line 1379
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    sub-int/2addr p1, v5

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenLayoutMeasureDiffX:I

    goto :goto_4

    .line 1367
    :cond_4
    :goto_3
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    add-int/2addr p1, p2

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    add-int/2addr v0, p2

    div-int/2addr p1, v0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    .line 1383
    :cond_5
    :goto_4
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setOverScrollRatio(F)V

    .line 1384
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->updateScreenOffset()V

    :cond_6
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 2160
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2161
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    div-int/lit8 v2, v1, 0x2

    add-int/2addr v0, v2

    div-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreen(I)V

    .line 2163
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->cancelScroll()V

    :cond_0
    return-void
.end method

.method protected onPinching(F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onPinchingEnd(F)V
    .locals 0

    return-void
.end method

.method protected onPushGesture(I)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 2310
    check-cast p1, Lcom/miui/home/launcher/ScreenView$SavedState;

    .line 2311
    invoke-virtual {p1}, Lcom/miui/home/launcher/ScreenView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/miui/launcher/views/LauncherViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2312
    iget v0, p1, Lcom/miui/home/launcher/ScreenView$SavedState;->currentScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2313
    iget p1, p1, Lcom/miui/home/launcher/ScreenView$SavedState;->currentScreen:I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreen(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 2303
    new-instance v0, Lcom/miui/home/launcher/ScreenView$SavedState;

    invoke-super {p0}, Lcom/miui/launcher/views/LauncherViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/ScreenView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2304
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    iput v1, v0, Lcom/miui/home/launcher/ScreenView$SavedState;->currentScreen:I

    return-object v0
.end method

.method protected onScrollInteractionBegin()V
    .locals 0

    return-void
.end method

.method protected onScrollInteractionEnd()V
    .locals 0

    return-void
.end method

.method protected onScrollXAnimationEnd()V
    .locals 4

    .line 469
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x0

    .line 470
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreenInner(I)V

    .line 471
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    :cond_0
    return-void
.end method

.method public onSecondaryPointerDown(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1729
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    .line 1730
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollX:F

    .line 1731
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->init(I)V

    .line 1732
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    .line 1733
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    return-void
.end method

.method public onSecondaryPointerMove(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1743
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    .line 1744
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    sub-float/2addr v0, p2

    .line 1745
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    const/4 p2, 0x0

    cmpl-float p2, v0, p2

    if-eqz p2, :cond_0

    .line 1748
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollX:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/ScreenView;->scrollTo(II)V

    goto :goto_0

    .line 1750
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->awakenScrollBars()Z

    .line 1753
    :goto_0
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSecondaryPointerUp(Landroid/view/MotionEvent;I)V
    .locals 0

    .line 1737
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ScreenView;->snapByVelocity(I)V

    .line 1738
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 1739
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1670
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentGestureFinished:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1672
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchIntercepted:Z

    if-eqz v0, :cond_1

    .line 1673
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1676
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 1690
    :pswitch_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_2

    .line 1691
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->cancelScroll()V

    .line 1692
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    const/16 v2, 0x3e8

    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mMaximumVelocity:I

    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    invoke-virtual {v0, v2, v4, v5}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getXVelocity(III)F

    move-result v0

    float-to-int v0, v0

    const/4 v2, 0x3

    .line 1694
    invoke-virtual {p0, v0, v2}, Lcom/miui/home/launcher/ScreenView;->snapByVelocity(II)V

    .line 1696
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 1681
    :pswitch_1
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1682
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1685
    :cond_3
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_7

    .line 1686
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->scrollToFollowMotionEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1699
    :pswitch_2
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const-string v2, "on touch up"

    .line 1700
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_4

    .line 1701
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const-string v2, "snapByVelocity"

    .line 1702
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ScreenView;->snapByVelocity(I)V

    goto :goto_0

    .line 1704
    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->checkVerticalFling(Landroid/view/MotionEvent;)V

    .line 1706
    :goto_0
    invoke-virtual {p0, p1, v3}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 1709
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v2, 0xff00

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    .line 1711
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1712
    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    if-ne v2, v4, :cond_7

    if-nez v0, :cond_6

    move v3, v1

    .line 1717
    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    .line 1718
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    .line 1719
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->init(I)V

    .line 1724
    :cond_7
    :goto_1
    :pswitch_3
    iput-boolean v1, p0, Lcom/miui/home/launcher/ScreenView;->mTouchIntercepted:Z

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onVerticalFling(IFF)V
    .locals 0

    return-void
.end method

.method protected onVerticalGesture(ILandroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 2016
    instance-of v0, p1, Lcom/miui/home/launcher/ScreenView$Indicator;

    if-eqz v0, :cond_0

    .line 2017
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    goto :goto_0

    .line 2019
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    .line 2021
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->onViewRemoved(Landroid/view/View;)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 2419
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    const/16 p2, 0x1000

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2000

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 2430
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 2431
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreen(I)V

    return v0

    .line 2424
    :cond_2
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    if-ltz p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p2

    sub-int/2addr p2, v0

    if-ge p1, p2, :cond_3

    .line 2425
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreen(I)V

    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected recalculateDeltaX(F)F
    .locals 0

    return p1
.end method

.method protected recalculateOverScroll(F)F
    .locals 9

    .line 2355
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isSpringOverScroll()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2357
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2358
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollLeftBound()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v1, v1

    .line 2359
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    .line 2360
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->isOverScroll(F)Z

    move-result v3

    if-eqz v3, :cond_4

    cmpl-float v3, p1, v2

    const/4 v4, 0x0

    if-lez v3, :cond_0

    sub-float v5, p1, v2

    goto :goto_0

    :cond_0
    cmpg-float v5, p1, v1

    if-gez v5, :cond_1

    sub-float v5, v1, p1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    int-to-float v0, v0

    div-float/2addr v5, v0

    const/high16 v6, 0x3f800000    # 1.0f

    .line 2366
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/high16 v6, 0x41500000    # 13.0f

    mul-float/2addr v6, v5

    mul-float v7, v6, v5

    mul-float/2addr v5, v7

    const/high16 v8, 0x42960000    # 75.0f

    div-float/2addr v5, v8

    const/high16 v8, 0x41c80000    # 25.0f

    div-float/2addr v7, v8

    sub-float/2addr v5, v7

    div-float/2addr v6, v8

    add-float/2addr v5, v6

    mul-float/2addr v5, v0

    if-lez v3, :cond_2

    add-float v4, v5, v2

    goto :goto_1

    :cond_2
    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    neg-float p1, v5

    add-float v4, p1, v1

    :cond_3
    :goto_1
    return v4

    :cond_4
    return p1
.end method

.method public refreshScrollBound()Z
    .locals 14

    .line 984
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    .line 985
    iget-boolean v1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutScreensSeamless:Z

    if-eqz v1, :cond_0

    .line 986
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr v0, v1

    .line 988
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollLeftBound()I

    move-result v1

    .line 989
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v2

    .line 990
    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollLeftBound:I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 991
    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollRightBound:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 992
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 995
    iget v6, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    if-eq v6, v7, :cond_1

    const/4 v8, 0x6

    if-ne v6, v8, :cond_2

    .line 997
    :cond_1
    iget v6, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    div-int/2addr v5, v6

    add-int/2addr v5, v7

    mul-int/2addr v5, v6

    sub-int/2addr v5, v7

    :cond_2
    move v13, v5

    move v5, v3

    move v3, v13

    .line 1001
    :cond_3
    iget v6, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v6, v6

    iget v8, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    .line 1002
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/ScreenView;->getScreenSnapX(I)I

    move-result v8

    sub-int/2addr v8, v6

    iput v8, p0, Lcom/miui/home/launcher/ScreenView;->mScrollLeftBound:I

    .line 1003
    iget-boolean v8, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-nez v8, :cond_4

    .line 1004
    invoke-direct {p0, v5}, Lcom/miui/home/launcher/ScreenView;->getScreenSnapX(I)I

    move-result v0

    add-int/2addr v0, v6

    iget v6, p0, Lcom/miui/home/launcher/ScreenView;->mScrollOffset:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollRightBound:I

    goto :goto_0

    .line 1005
    :cond_4
    iget v8, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 1006
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollLeftBound:I

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollRightBound:I

    goto :goto_0

    .line 1009
    :cond_5
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/ScreenView;->getVisualPosition(I)I

    move-result v8

    .line 1010
    iget v9, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    div-int/2addr v8, v9

    mul-int/2addr v8, v0

    add-int/2addr v8, v6

    iput v8, p0, Lcom/miui/home/launcher/ScreenView;->mScrollRightBound:I

    .line 1013
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_9

    .line 1014
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_6

    move v13, v5

    move v5, v3

    move v3, v13

    .line 1019
    :cond_6
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    move v6, v4

    :goto_1
    if-ge v6, v0, :cond_9

    .line 1021
    iget-object v8, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v8, v6}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicatorPoint(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 1023
    iget-object v9, p0, Lcom/miui/home/launcher/ScreenView;->mContext:Landroid/content/Context;

    const v10, 0x7f100322

    new-array v11, v7, [Ljava/lang/Object;

    add-int/lit8 v12, v6, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1024
    invoke-virtual {v8, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-lt v6, v3, :cond_7

    if-gt v6, v5, :cond_7

    move v9, v4

    goto :goto_2

    :cond_7
    const/16 v9, 0x8

    .line 1025
    :goto_2
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1029
    :cond_9
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollLeftBound()I

    move-result v0

    if-ne v1, v0, :cond_a

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v0

    if-ne v2, v0, :cond_a

    .line 1030
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollLeftBound()I

    move-result v1

    if-ge v0, v1, :cond_b

    :cond_a
    move v4, v7

    :cond_b
    return v4
.end method

.method public removeAllScreens()V
    .locals 2

    .line 2067
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2068
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ScreenView;->removeScreensInLayout(II)V

    .line 2069
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->requestLayout()V

    .line 2070
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->invalidate()V

    return-void
.end method

.method public removeIndicator(Landroid/view/View;)V
    .locals 1

    .line 2034
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 2035
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2039
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    .line 2040
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViewAt(I)V

    return-void

    .line 2036
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "The view passed through the parameter must be indicator."

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeOutAllScreens()[Landroid/view/View;
    .locals 3

    .line 2082
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    .line 2083
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2084
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2086
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->removeAllScreens()V

    return-object v0
.end method

.method public removeScreen(I)V
    .locals 2

    .line 2044
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 2048
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    if-ne p1, v0, :cond_1

    .line 2049
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-nez v0, :cond_0

    .line 2050
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    .line 2051
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreen(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2053
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    add-int/lit8 v0, p1, -0x1

    .line 2055
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    .line 2060
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_2

    .line 2061
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->removeScreenIndicatorPoint(I)V

    .line 2063
    :cond_2
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViewAt(I)V

    return-void

    .line 2045
    :cond_3
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "The view specified by the index must be a screen."

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeScreenTransitionType(I)V
    .locals 1

    .line 2185
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->removeTransitionType(I)Z

    .line 2186
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->isValidType()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2187
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->getOverShotTension()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setOvershootTension(F)V

    .line 2188
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->getScreenSnapDuration()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setScreenSnapDuration(I)V

    :cond_0
    return-void
.end method

.method public removeScreensInLayout(II)V
    .locals 1

    if-ltz p1, :cond_2

    .line 2091
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2092
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2094
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_1

    .line 2095
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->removeScreenIndicatorPoint(II)V

    .line 2097
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViewsInLayout(II)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1978
    instance-of v0, p1, Lcom/miui/home/launcher/ScreenView$Indicator;

    if-eqz v0, :cond_0

    .line 1979
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->throwRemoveIndicatorException()V

    .line 1981
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    .line 1997
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1998
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->throwRemoveIndicatorException()V

    .line 2000
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1

    .line 1985
    instance-of v0, p1, Lcom/miui/home/launcher/ScreenView$Indicator;

    if-eqz v0, :cond_0

    .line 1986
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->throwRemoveIndicatorException()V

    .line 1988
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViews(II)V
    .locals 2

    add-int v0, p1, p2

    .line 2008
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 2009
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->throwRemoveIndicatorException()V

    .line 2011
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViews(II)V

    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2

    add-int v0, p1, p2

    .line 1991
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1992
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->throwRemoveIndicatorException()V

    .line 1994
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViewsInLayout(II)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 1434
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1435
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1436
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1437
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    const/4 p1, 0x1

    return p1

    .line 1442
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/ScreenView;->superRequestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public resetScreenScrollRange()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 222
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ScreenView;->setScreenScrollRange(II)V

    const/4 v0, 0x1

    .line 223
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->correctCurrentScreen(Z)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 5

    .line 1109
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v0

    .line 1110
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrollable()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 1111
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollLeftBound()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v4

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 1112
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollX:F

    .line 1113
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    if-eq v1, v3, :cond_1

    const/4 v4, 0x6

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 1115
    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v4

    if-le v0, v4, :cond_2

    if-eqz v1, :cond_2

    .line 1116
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollX:F

    int-to-float v4, v0

    sub-float/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->setTranslationX(F)V

    .line 1117
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1120
    :cond_2
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollX:F

    float-to-int v1, v1

    invoke-super {p0, v1, p2}, Lcom/miui/launcher/views/LauncherViewGroup;->scrollTo(II)V

    .line 1123
    :cond_3
    iget-boolean p2, p0, Lcom/miui/home/launcher/ScreenView;->mPushGestureEnabled:Z

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result p2

    if-ne v0, p2, :cond_6

    iget-boolean p2, p0, Lcom/miui/home/launcher/ScreenView;->mGestureTrigged:Z

    if-nez p2, :cond_6

    .line 1124
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getTouchState()I

    move-result p2

    if-ne p2, v3, :cond_6

    .line 1125
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    sub-int v1, p1, v0

    add-int/2addr p2, v1

    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    .line 1126
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getSnapBound()[I

    move-result-object p2

    .line 1127
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollingStateStartX:I

    aget v3, p2, v3

    if-lt v1, v3, :cond_4

    if-ge p1, v0, :cond_5

    :cond_4
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollingStateStartX:I

    aget p2, p2, v2

    if-gt v1, p2, :cond_6

    if-gt p1, v0, :cond_6

    :cond_5
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    sub-int/2addr p2, p1

    .line 1129
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenDensity()F

    move-result v0

    div-float/2addr p2, v0

    const/high16 v0, 0x42480000    # 50.0f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_6

    .line 1130
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->onPushGesture(I)V

    :cond_6
    return-void
.end method

.method public scrollToScreen(I)V
    .locals 3

    .line 1034
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_0

    .line 1035
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->calibrateCurrentScreenIndex(I)I

    move-result p1

    .line 1037
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 1038
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    rem-int v1, p1, v0

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_2

    add-int/lit8 v1, v0, -0x1

    .line 1039
    rem-int v0, p1, v0

    sub-int/2addr v1, v0

    add-int/2addr p1, v1

    .line 1042
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreenScrollX(I)I

    move-result p1

    .line 1043
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_3

    .line 1044
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sub-int/2addr p1, v0

    :cond_3
    const/4 v0, 0x0

    .line 1046
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ScreenView;->scrollTo(II)V

    return-void
.end method

.method protected scrolledFarEnough(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1591
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mPinIned:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1594
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1595
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1596
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 1597
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    sub-float/2addr v3, v5

    const/4 v5, 0x0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v6, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    sub-float/2addr v3, v6

    cmpg-float v3, v3, v5

    if-ltz v3, :cond_2

    .line 1598
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v6, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    sub-float/2addr v3, v6

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v6, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    sub-float/2addr v3, v6

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_2

    goto :goto_0

    .line 1601
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1602
    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    mul-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_4

    return v1

    :cond_3
    :goto_0
    return v1

    :cond_4
    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    .line 1607
    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    mul-int/2addr v2, p1

    int-to-float p1, v2

    cmpl-float p1, v0, p1

    if-lez p1, :cond_5

    move v1, v4

    :cond_5
    return v1
.end method

.method public setAllowLongPress(Z)V
    .locals 0

    .line 2112
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 3

    .line 1926
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_0

    .line 1927
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->calibrateCurrentScreenIndex(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1929
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1932
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreenInner(I)V

    .line 1933
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->cancelScroll()V

    .line 1934
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->scrollToScreen(I)V

    return-void
.end method

.method protected setCurrentScreenInner(I)V
    .locals 3

    .line 1938
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->updateSeekPoints(I)V

    .line 1939
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    const/4 v0, -0x1

    .line 1940
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    .line 1941
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentScreenInner:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-void
.end method

.method public setEnableReverseDrawingMode(Z)V
    .locals 0

    .line 2205
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setChildrenDrawingOrderEnabled(Z)V

    .line 2206
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mEnableReverseDrawingMode:Z

    return-void
.end method

.method public setFixedGap(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    return-void
.end method

.method public setIndicatorBarVisibility(I)V
    .locals 0

    .line 777
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setSeekBarVisibility(I)V

    .line 778
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setSlideBarVisibility(I)V

    return-void
.end method

.method public setMaximumSnapVelocity(I)V
    .locals 0

    .line 208
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mMaximumVelocity:I

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .line 2122
    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 2123
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2125
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOverScrollRatio(F)V
    .locals 0

    .line 970
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    .line 971
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->requestLayout()V

    return-void
.end method

.method public setOvershootTension(F)V
    .locals 0

    .line 196
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mOvershootTension:F

    return-void
.end method

.method public setPushGestureEnabled(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mPushGestureEnabled:Z

    return-void
.end method

.method public setScreenLayoutMode(I)V
    .locals 2

    .line 796
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    if-eq v0, p1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    .line 798
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    .line 800
    :cond_0
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    .line 801
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setScreenScrollRange(II)V
    .locals 0

    .line 216
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollLeftBound:I

    .line 217
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollRightBound:I

    .line 218
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->refreshScrollBound()Z

    return-void
.end method

.method public setScreenSnapDuration(I)V
    .locals 0

    .line 200
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSnapDuration:I

    return-void
.end method

.method public setScreenTransitionType(I)I
    .locals 1

    .line 2172
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->setTransitionType(I)I

    move-result p1

    .line 2173
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->getOverShotTension()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setOvershootTension(F)V

    .line 2174
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->getScreenSnapDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setScreenSnapDuration(I)V

    return p1
.end method

.method public setScrollWholeScreen(Z)V
    .locals 0

    .line 212
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    return-void
.end method

.method public setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 539
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-nez v0, :cond_0

    .line 540
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->createIndicatorView()Lcom/miui/home/launcher/ScreenView$IndicatorView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    .line 542
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->setLayoutTransition()V

    .line 543
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 544
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setScreenIndicatorLayoutMode(I)V

    .line 545
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setAnimationCacheEnabled(Z)V

    .line 546
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_0

    .line 548
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 551
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p1, :cond_2

    .line 552
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->removeIndicator(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 553
    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    :cond_2
    :goto_0
    return-void
.end method

.method public setSeekBarVisibility(I)V
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-nez v0, :cond_0

    return-void

    .line 785
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setVisibility(I)V

    return-void
.end method

.method public setSeekPointResource(I)V
    .locals 3

    .line 480
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mSeekPointResId:I

    if-eq v0, p1, :cond_1

    .line 481
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mSeekPointResId:I

    .line 482
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p1, :cond_1

    .line 483
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 485
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicatorPoint(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 487
    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mSeekPointResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 488
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 3

    const v0, 0x7f0804f2

    const v1, 0x7f0804f3

    const/4 v2, 0x0

    .line 717
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/ScreenView;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V

    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V
    .locals 2

    .line 725
    iput-boolean p4, p0, Lcom/miui/home/launcher/ScreenView;->mIsSlideBarAutoHide:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    .line 727
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-nez v0, :cond_0

    .line 728
    new-instance v0, Lcom/miui/home/launcher/ScreenView$SlideBar;

    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/miui/home/launcher/ScreenView$SlideBar;-><init>(Lcom/miui/home/launcher/ScreenView;Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    .line 729
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    new-instance p3, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;

    invoke-direct {p3, p0, p4}, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;-><init>(Lcom/miui/home/launcher/ScreenView;Lcom/miui/home/launcher/ScreenView$1;)V

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 730
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setAnimationCacheEnabled(Z)V

    .line 731
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_0

    .line 733
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 736
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz p1, :cond_2

    .line 737
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 738
    iput-object p4, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    :cond_2
    :goto_0
    return-void
.end method

.method public setSlideBarVisibility(I)V
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-nez v0, :cond_0

    return-void

    .line 792
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setVisibility(I)V

    return-void
.end method

.method protected setTouchState(Landroid/view/MotionEvent;I)V
    .locals 4

    .line 1470
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    const/4 v1, 0x1

    if-eq v0, p2, :cond_0

    if-ne p2, v1, :cond_0

    .line 1471
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollingStateStartX:I

    .line 1472
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mLinearScrollX:F

    .line 1474
    :cond_0
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    .line 1476
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1477
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-nez v0, :cond_2

    const/4 p1, -0x1

    .line 1478
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    .line 1479
    iput-boolean v3, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    .line 1480
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->recycle()V

    .line 1481
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->onScrollInteractionEnd()V

    const/4 p1, 0x0

    .line 1482
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLinearScrollX:F

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 1486
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    .line 1490
    :cond_3
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    if-eqz v0, :cond_4

    .line 1491
    iput-boolean v3, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    .line 1495
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1496
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1499
    :cond_4
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_5

    .line 1500
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollX:F

    .line 1501
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->scrollToFollowMotionEvent(Landroid/view/MotionEvent;)V

    .line 1505
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->showSlideBar()V

    .line 1506
    iget-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mPushGestureEnabled:Z

    if-eqz p1, :cond_6

    if-ne p2, v1, :cond_6

    .line 1508
    iput-boolean v3, p0, Lcom/miui/home/launcher/ScreenView;->mGestureTrigged:Z

    .line 1509
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    :cond_6
    return-void
.end method

.method public setUniformLayoutModeMaxGap(I)Z
    .locals 2

    .line 1154
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1155
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    if-eq v0, p1, :cond_0

    .line 1156
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    .line 1157
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->requestLayout()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setVisibility(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 1301
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->showSlideBar()V

    .line 1303
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected skipNextAutoLayoutAnimation()V
    .locals 3

    .line 1136
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1137
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1138
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v1, :cond_0

    .line 1139
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setSkipNextAutoLayoutAnimation(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected snapByVelocity(II)V
    .locals 4

    .line 1767
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, -0x1

    if-ne p2, v1, :cond_2

    .line 1769
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    .line 1770
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    .line 1769
    :cond_1
    invoke-direct {p0, p2, v0, v2}, Lcom/miui/home/launcher/ScreenView;->getSnapToScreenIndex(III)I

    move-result p2

    .line 1771
    invoke-virtual {p0, p2, p1, v1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(IIZ)I

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_4

    .line 1773
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    .line 1774
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    .line 1773
    :goto_1
    invoke-direct {p0, p2, v0, v2}, Lcom/miui/home/launcher/ScreenView;->getSnapToScreenIndex(III)I

    move-result p2

    .line 1775
    invoke-virtual {p0, p2, p1, v1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(IIZ)I

    goto :goto_2

    :cond_4
    const/4 v2, 0x3

    if-ne p2, v2, :cond_5

    .line 1777
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0, p2, p1, v1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(IIZ)I

    goto :goto_2

    .line 1779
    :cond_5
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getSnapUnitIndex(I)I

    move-result p1

    const/4 p2, 0x0

    .line 1780
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(IIZ)I

    :goto_2
    return-void
.end method

.method public snapToScreen(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1797
    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(IIZ)I

    move-result p1

    return p1
.end method

.method protected snapToScreen(IIZ)I
    .locals 6

    .line 1812
    iget p3, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    return v0

    .line 1815
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->cancelScroll()V

    .line 1816
    iget-boolean p3, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-eqz p3, :cond_1

    .line 1817
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->calibrateCurrentScreenIndex(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    goto :goto_0

    .line 1819
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p3

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    sub-int/2addr p3, v1

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    .line 1824
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1826
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getSnapBound()[I

    move-result-object p3

    .line 1827
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x6

    if-ne v1, v3, :cond_3

    .line 1829
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    rem-int v4, v1, v3

    add-int/lit8 v5, v3, -0x1

    if-eq v4, v5, :cond_3

    add-int/lit8 v4, v3, -0x1

    .line 1830
    rem-int v3, v1, v3

    sub-int/2addr v4, v3

    add-int/2addr v1, v4

    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    .line 1833
    :cond_3
    aget v1, p3, v0

    aget v3, p3, v2

    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    .line 1834
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/ScreenView;->getScreenScrollX(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getSnapOverScroll()I

    move-result v5

    add-int/2addr v4, v5

    .line 1833
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1835
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v3

    sub-int v3, v1, v3

    if-nez v3, :cond_4

    return v0

    .line 1839
    :cond_4
    aget v4, p3, v0

    if-eq v1, v4, :cond_6

    aget p3, p3, v2

    if-ne v1, p3, :cond_5

    goto :goto_1

    .line 1842
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getSnapOverScroll()I

    move-result p3

    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mSnapDelta:I

    goto :goto_2

    .line 1840
    :cond_6
    :goto_1
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mSnapDelta:I

    .line 1845
    :goto_2
    invoke-virtual {p0, v3, p1}, Lcom/miui/home/launcher/ScreenView;->getSnapDuration(II)I

    move-result p1

    .line 1846
    iget p3, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/ScreenView;->beforeSnapToScreen(I)V

    .line 1847
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result p3

    neg-int p2, p2

    invoke-virtual {p0, p3, v3, p2}, Lcom/miui/home/launcher/ScreenView;->startScroll(III)V

    .line 1848
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ScreenView;->updateSeekPoints(I)V

    .line 1849
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->invalidate()V

    return p1
.end method

.method public snapToScreen(Lcom/miui/home/launcher/CellScreen;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1802
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getChildIndex(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(IIZ)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public startScroll(III)V
    .locals 6

    const v4, 0x3f666666    # 0.9f

    const v5, 0x3eb33333    # 0.35f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 1871
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/ScreenView;->startScroll(IIIFF)V

    return-void
.end method

.method public startScroll(IIIFF)V
    .locals 2

    .line 1878
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mLastScrollXInDraw:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    add-int/2addr p2, p1

    .line 1879
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollTargetValue:I

    int-to-float p1, p1

    .line 1880
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartValue:F

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollCurrentValue:F

    .line 1881
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollTargetValue:I

    int-to-float p2, p2

    invoke-static {p5}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result p5

    invoke-static {p2, p4, p5}, Lcom/miui/home/launcher/animate/SpringAnimator;->getSpringForce(FFF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1882
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1883
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 1884
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startScroll:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/home/launcher/ScreenView;->mScrollTargetValue:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    return-void
.end method

.method protected superDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 1429
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public superRemoveViewAt(I)V
    .locals 0

    .line 2004
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViewAt(I)V

    return-void
.end method

.method protected superRequestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    .line 1446
    invoke-super {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method protected updateChildStaticTransformation(Landroid/view/View;)V
    .locals 11

    .line 2193
    instance-of v0, p1, Lcom/miui/home/launcher/ScreenView$Indicator;

    if-eqz v0, :cond_0

    return-void

    .line 2196
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2197
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float v2, v0, v2

    .line 2199
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v3, v1

    sub-float/2addr v3, v2

    div-float v5, v3, v0

    .line 2200
    iget-object v4, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    .line 2201
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mLastScrollX:I

    sub-int/2addr v0, v1

    int-to-float v6, v0

    iget v7, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionY:F

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    sub-float v8, v0, v1

    move-object v9, p1

    move-object v10, p0

    .line 2200
    invoke-virtual/range {v4 .. v10}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->updateTransformation(FFFFLandroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method
