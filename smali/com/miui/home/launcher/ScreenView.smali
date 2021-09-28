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

    .line 158
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->getDipPixelSize(F)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/ScreenView;->VIEW_CONFIGURATION_TOUCH_SLOP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 422
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

    const p1, 0x7f080513

    .line 73
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mSeekPointResId:I

    .line 80
    new-instance p1, Lcom/miui/home/launcher/ScreenView$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/ScreenView$1;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    .line 94
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

    .line 96
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->PREVIEW_MODE_MAX_SCREEN_WIDTH:F

    const/4 p1, 0x0

    .line 97
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    .line 98
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutScreensSeamless:Z

    const v0, 0x7fffffff

    .line 99
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    .line 100
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeCurrentGap:I

    .line 101
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    .line 102
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mIgnoreCenterY:Z

    .line 104
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollOffset:I

    const/4 v1, -0x1

    .line 105
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mLastVisibleRange:I

    .line 106
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    .line 107
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    .line 108
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureHeight:I

    .line 109
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenLayoutMeasureDiffX:I

    .line 110
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    const/4 v2, 0x0

    .line 112
    iput-object v2, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    .line 113
    iput-object v2, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    .line 115
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    .line 116
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    .line 119
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollLeftBound:I

    .line 120
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollRightBound:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 121
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    .line 122
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    .line 123
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCROLL_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, p0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 128
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 134
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    .line 142
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    .line 147
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mPushGestureEnabled:Z

    .line 148
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    .line 149
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollingStateStartX:I

    .line 150
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mGestureTrigged:Z

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    .line 169
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    .line 172
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mPinIned:Z

    .line 177
    new-instance v1, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-direct {v1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    .line 178
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLastScrollX:I

    const v1, 0x3fa66666    # 1.3f

    .line 179
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mOvershootTension:F

    const/16 v1, 0x1f4

    .line 180
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSnapDuration:I

    .line 183
    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 186
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mEnableReverseDrawingMode:Z

    .line 413
    new-instance v1, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    iput-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    const/4 v1, 0x0

    .line 463
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollCurrentValue:F

    .line 1141
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLastScrollXInDraw:I

    .line 1587
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchPointerSize:I

    .line 1619
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mLinearScrollX:F

    .line 1851
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollTargetValue:I

    .line 1852
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartValue:F

    .line 423
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->initScreenView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 433
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 444
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

    const p1, 0x7f080513

    .line 73
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mSeekPointResId:I

    .line 80
    new-instance p1, Lcom/miui/home/launcher/ScreenView$1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/ScreenView$1;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    .line 94
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

    .line 96
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->PREVIEW_MODE_MAX_SCREEN_WIDTH:F

    const/4 p1, 0x0

    .line 97
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    .line 98
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutScreensSeamless:Z

    const p2, 0x7fffffff

    .line 99
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    .line 100
    iget p3, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeCurrentGap:I

    .line 101
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    .line 102
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mIgnoreCenterY:Z

    .line 104
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollOffset:I

    const/4 p3, -0x1

    .line 105
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mLastVisibleRange:I

    .line 106
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    .line 107
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    .line 108
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureHeight:I

    .line 109
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenLayoutMeasureDiffX:I

    .line 110
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    .line 113
    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    .line 115
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    .line 116
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    .line 119
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollLeftBound:I

    .line 120
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollRightBound:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 121
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    .line 122
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    .line 123
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCROLL_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p2, p0, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 128
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 134
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    .line 142
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    .line 147
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mPushGestureEnabled:Z

    .line 148
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    .line 149
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollingStateStartX:I

    .line 150
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mGestureTrigged:Z

    const/4 p2, 0x1

    .line 154
    iput-boolean p2, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    .line 169
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    .line 172
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mPinIned:Z

    .line 177
    new-instance p3, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-direct {p3}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    .line 178
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLastScrollX:I

    const p3, 0x3fa66666    # 1.3f

    .line 179
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mOvershootTension:F

    const/16 p3, 0x1f4

    .line 180
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSnapDuration:I

    .line 183
    new-instance p3, Landroid/animation/LayoutTransition;

    invoke-direct {p3}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object p3, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 186
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mEnableReverseDrawingMode:Z

    .line 413
    new-instance p3, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    iput-object p3, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    const/4 p3, 0x0

    .line 463
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mScrollCurrentValue:F

    .line 1141
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLastScrollXInDraw:I

    .line 1587
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mTouchPointerSize:I

    .line 1619
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mLinearScrollX:F

    .line 1851
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollTargetValue:I

    .line 1852
    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartValue:F

    .line 445
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

    .line 835
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 837
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    if-eqz v0, :cond_2

    .line 839
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 840
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    rem-int v2, p1, v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    goto :goto_0

    .line 842
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    .line 844
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

    .line 845
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    if-nez p1, :cond_3

    .line 847
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    sub-int/2addr p1, v1

    :cond_3
    :goto_2
    return p1
.end method

.method private checkVerticalFling(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1612
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-nez v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mMaximumVelocity:I

    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getYVelocity(III)F

    move-result v0

    float-to-int v0, v0

    .line 1615
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/miui/home/launcher/ScreenView;->onVerticalFling(IFF)V

    :cond_0
    return-void
.end method

.method private createSeekPoint()Landroid/widget/ImageView;
    .locals 2

    .line 2107
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2108
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 2109
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mSeekPointResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2110
    new-instance v1, Lcom/miui/home/launcher/ScreenView$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ScreenView$3;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v1, 0x8

    .line 2116
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x2

    .line 2117
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    return-object v0
.end method

.method private getFixedGapModeStartPoint()I
    .locals 4

    .line 1252
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1253
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1254
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private final getScreenScrollX(I)I
    .locals 2

    .line 1047
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrollable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1048
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result p1

    return p1

    .line 1049
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    if-ge v0, v1, :cond_1

    .line 1050
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollOffset:I

    neg-int p1, p1

    return p1

    .line 1052
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreenSnapX(I)I

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollOffset:I

    sub-int/2addr p1, v0

    return p1
.end method

.method private final getScreenSnapX(I)I
    .locals 4

    .line 1056
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreenLayoutX(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenLayoutMeasureDiffX:I

    sub-int/2addr p1, v0

    .line 1057
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1058
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    if-ge v0, v1, :cond_0

    .line 1059
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    goto :goto_0

    .line 1061
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

    .line 1064
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

    .line 1066
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

    .line 854
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

    .line 452
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 454
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 455
    sget v1, Lcom/miui/home/launcher/ScreenView;->VIEW_CONFIGURATION_TOUCH_SLOP:I

    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mTouchSlop:I

    .line 456
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setMaximumSnapVelocity(I)V

    .line 458
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/ScreenView$ScaleDetectorListener;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 459
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$ScreenView$KNeqMPLtcofq4O5LH4hXq5MF2Ak;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$ScreenView$KNeqMPLtcofq4O5LH4hXq5MF2Ak;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 460
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v1, Lcom/miui/home/launcher/-$$Lambda$ScreenView$nJdWMXA2TtyHzoqt7eWiXp8g4q4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/-$$Lambda$ScreenView$nJdWMXA2TtyHzoqt7eWiXp8g4q4;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    return-void
.end method

.method private isOverScroll(F)Z
    .locals 3

    .line 2325
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2326
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollLeftBound()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v1, v1

    .line 2327
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

    .line 459
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->onScrollXAnimationEnd()V

    return-void
.end method

.method public static synthetic lambda$initScreenView$1(Lcom/miui/home/launcher/ScreenView;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    .line 460
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollCurrentValue:F

    return-void
.end method

.method private onTouchEventUnique(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1589
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1591
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    const/4 v1, 0x5

    if-eq v1, v0, :cond_0

    .line 1592
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchPointerSize:I

    .line 1593
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1596
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-nez v0, :cond_2

    .line 1597
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1598
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->onScrollInteractionBegin()V

    const/4 v0, 0x1

    .line 1599
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1601
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getVerticalGesture()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1603
    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/ScreenView;->onVerticalGesture(ILandroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1604
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private scrollToFollowMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1623
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1625
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1626
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1628
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    .line 1629
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    sub-float/2addr v0, p1

    .line 1630
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->recalculateDeltaX(F)F

    move-result v0

    .line 1631
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    .line 1632
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mLinearScrollX:F

    add-float/2addr p1, v0

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLinearScrollX:F

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    .line 1634
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mLinearScrollX:F

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->recalculateOverScroll(F)F

    move-result p1

    .line 1635
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ScreenView;->scrollTo(II)V

    goto :goto_0

    .line 1637
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->awakenScrollBars()Z

    :goto_0
    return-void
.end method

.method private setLayoutTransition()V
    .locals 12

    const-string v0, "scaleX"

    const/4 v1, 0x2

    .line 493
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v2, "scaleY"

    .line 494
    new-array v3, v1, [F

    fill-array-data v3, :array_1

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 495
    new-array v3, v1, [Landroid/animation/PropertyValuesHolder;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 496
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v1, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 497
    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v1, v5, v6}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 498
    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v5, 0xfa

    invoke-virtual {v2, v1, v5, v6}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    const-string v2, "scaleX"

    .line 500
    new-array v3, v1, [F

    fill-array-data v3, :array_2

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v3, "scaleY"

    .line 501
    new-array v7, v1, [F

    fill-array-data v7, :array_3

    invoke-static {v3, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 502
    new-array v7, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v7, v4

    aput-object v3, v7, v0

    invoke-static {p0, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 503
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v7, 0x3

    invoke-virtual {v3, v7, v5, v6}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 504
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v7, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    const-string v2, "left"

    .line 506
    new-array v3, v1, [I

    fill-array-data v3, :array_4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string v3, "top"

    .line 507
    new-array v5, v1, [I

    fill-array-data v5, :array_5

    invoke-static {v3, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    const-string v5, "right"

    .line 508
    new-array v6, v1, [I

    fill-array-data v6, :array_6

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    const-string v6, "bottom"

    .line 509
    new-array v8, v1, [I

    fill-array-data v8, :array_7

    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    const/4 v8, 0x4

    .line 511
    new-array v9, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v9, v4

    aput-object v3, v9, v0

    aput-object v5, v9, v1

    aput-object v6, v9, v7

    invoke-static {p0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 513
    iget-object v10, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v10, v4, v9}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 514
    iget-object v9, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 515
    invoke-virtual {v9, v1}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v10

    .line 514
    invoke-virtual {v9, v4, v10, v11}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 517
    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v8, v4

    aput-object v3, v8, v0

    aput-object v5, v8, v1

    aput-object v6, v8, v7

    invoke-static {p0, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 519
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v0, v2}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 520
    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 521
    invoke-virtual {v2, v7}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v5

    .line 520
    invoke-virtual {v2, v0, v5, v6}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 522
    new-instance v2, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    .line 523
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v3, v1, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 524
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v7, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 525
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v4, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 526
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, v0, v2}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 527
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

    .line 740
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mIsSlideBarAutoHide:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mAutoHideTimer:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 745
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$SlideBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 747
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setAlpha(F)V

    .line 748
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setVisibility(I)V

    .line 750
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-nez v0, :cond_1

    .line 751
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

    .line 1099
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1100
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->skipToEnd()V

    :cond_0
    return-void
.end method

.method private snapByVelocity(I)V
    .locals 3

    .line 1734
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrollable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1738
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mMaximumVelocity:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getXVelocity(III)F

    move-result p1

    float-to-int p1, p1

    .line 1739
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getXFlingDirection(F)I

    move-result v0

    .line 1740
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ScreenView;->snapByVelocity(II)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private startHideSlideBar()V
    .locals 3

    .line 756
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mIsSlideBarAutoHide:Z

    if-nez v0, :cond_0

    return-void

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$SlideBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 760
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 761
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/ScreenView$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ScreenView$2;-><init>(Lcom/miui/home/launcher/ScreenView;)V

    .line 762
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private throwRemoveIndicatorException()V
    .locals 2

    .line 2002
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove indicator directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateIndicatorPositions(IZ)V
    .locals 12

    .line 862
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getWidth()I

    move-result v0

    if-lez v0, :cond_8

    .line 863
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    .line 864
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getWidth()I

    move-result v1

    .line 865
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    move v4, p1

    move p1, v3

    .line 867
    :goto_0
    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    if-ge p1, v5, :cond_8

    add-int v5, p1, v0

    .line 868
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 869
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 871
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 872
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 877
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

    .line 895
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_0
    sub-int v10, v1, v7

    .line 892
    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v10, v11

    goto :goto_1

    .line 885
    :cond_1
    iget v10, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_2
    sub-int v10, v1, v7

    .line 888
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

    .line 910
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_3
    sub-int v9, v2, v8

    .line 907
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v6, v9, v6

    goto :goto_2

    .line 900
    :cond_4
    iget v6, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_5
    sub-int v9, v2, v8

    .line 903
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

    .line 913
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    if-lez v9, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    if-lez v9, :cond_7

    int-to-float v6, v4

    .line 914
    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_3

    :cond_7
    add-int/2addr v10, v3

    add-int/2addr v7, v10

    add-int/2addr v8, v6

    .line 917
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

    .line 858
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollOffset:I

    return-void
.end method

.method private updateSeekPoints(I)V
    .locals 5

    .line 2122
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_2

    .line 2123
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2125
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicatorPoint(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    if-lt v2, p1, :cond_0

    .line 2127
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

    .line 929
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    .line 930
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz v1, :cond_4

    if-lez v0, :cond_4

    .line 931
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getSnapBound()[I

    move-result-object v1

    const/4 v2, 0x1

    .line 932
    aget v3, v1, v2

    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 933
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ScreenView$SlideBar;->getSlideWidth()I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    .line 935
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

    .line 937
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 939
    iget v6, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr v6, v0

    const/4 v0, 0x0

    if-gt v6, v3, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    .line 944
    aget v6, v1, v0

    int-to-float v6, v6

    sub-float/2addr p1, v6

    aget v2, v1, v2

    aget v1, v1, v0

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr p1, v1

    mul-float/2addr p1, v5

    .line 946
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ScreenView$SlideBar;->getSlidePaddingLeft()I

    move-result v1

    float-to-int p1, p1

    add-int/2addr p1, v1

    .line 948
    :goto_0
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    move p1, v0

    move v4, v5

    :cond_2
    int-to-float v1, p1

    add-float/2addr v4, v1

    .line 952
    iget-object v2, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {v2}, Lcom/miui/home/launcher/ScreenView$SlideBar;->getSlidePaddingLeft()I

    move-result v2

    add-int/2addr v3, v2

    int-to-float v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 953
    iget-object v3, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    float-to-int v4, v2

    invoke-virtual {v3, p1, v4}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setPosition(II)V

    sub-float/2addr v2, v1

    cmpl-float p1, v2, v5

    if-nez p1, :cond_3

    .line 955
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setVisibility(I)V

    goto :goto_1

    .line 957
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setVisibility(I)V

    .line 959
    :goto_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isHardwareAccelerated()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 960
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ScreenView$SlideBar;->invalidate()V

    :cond_4
    return-void
.end method


# virtual methods
.method public abandonGenericScrollEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2427
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

    .line 2006
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    const/4 v0, -0x1

    .line 2007
    invoke-super {p0, p1, v0, p2}, Lcom/miui/launcher/views/LauncherViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 1934
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-gez p2, :cond_0

    goto :goto_0

    .line 1939
    :cond_0
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1942
    :goto_0
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p2, :cond_1

    .line 1943
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->createSeekPoint()Landroid/widget/ImageView;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p2, v1, v0, v2}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->addScreenIndicatorPoint(Landroid/view/View;ILandroid/widget/LinearLayout$LayoutParams;)V

    .line 1946
    :cond_1
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    .line 1947
    invoke-super {p0, p1, v0, p3}, Lcom/miui/launcher/views/LauncherViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public allowLongPress()Z
    .locals 1

    .line 2081
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    return v0
.end method

.method public appendScreenTransitionType(I)V
    .locals 1

    .line 2156
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->appendTransitionType(I)V

    .line 2157
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->getOverShotTension()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setOvershootTension(F)V

    .line 2158
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

    .line 1092
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const-string v1, "cancelScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 2

    .line 1145
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastScrollXInDraw:I

    .line 1146
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/ScreenView;->updateIndicatorPositions(IZ)V

    .line 1147
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ScreenView;->updateSlidePointPosition(I)V

    return-void
.end method

.method public correctCurrentScreen(Z)V
    .locals 2

    .line 1366
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getDefaultScreenIndex()I

    move-result v0

    .line 1367
    :cond_0
    iget-boolean v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-eqz v1, :cond_1

    .line 1368
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ScreenView;->calibrateCurrentScreenIndex(I)I

    move-result v0

    .line 1370
    :cond_1
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_3

    .line 1371
    :cond_2
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreen(I)V

    :cond_3
    return-void
.end method

.method protected createIndicatorView()Lcom/miui/home/launcher/ScreenView$IndicatorView;
    .locals 2

    .line 555
    new-instance v0, Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;

    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/ScreenView$SeekBarIndicator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1563
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1564
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

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 1429
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    if-lez v1, :cond_1

    sub-int/2addr v1, v0

    .line 1430
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    return v0

    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1434
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_1

    .line 1435
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    return v0

    .line 1439
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 1401
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->updateChildStaticTransformation(Landroid/view/View;)V

    .line 1402
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/ScreenView;->superDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method protected finishCurrentGesture()V
    .locals 2

    .line 1768
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    const/4 v0, 0x1

    .line 1769
    iput-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentGestureFinished:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1770
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public getAllScreens()[Landroid/view/View;
    .locals 3

    .line 2051
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    .line 2052
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2053
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

    .line 2188
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

    .line 1869
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1870
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

    .line 1273
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    return v0
.end method

.method public getCurrentScreen()Landroid/view/View;
    .locals 1

    .line 1890
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenIndex()I
    .locals 2

    .line 1883
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1886
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

    .line 2418
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mMaximumVelocity:I

    return v0
.end method

.method public getScreen(I)Landroid/view/View;
    .locals 1

    if-ltz p1, :cond_1

    .line 1923
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1926
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

    .line 1865
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    return v0
.end method

.method protected getScreenIndexByPoint(II)I
    .locals 4

    .line 805
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getWidth()I

    move-result p2

    div-int p2, p1, p2

    .line 807
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    .line 808
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getChildCount()I

    move-result p2

    const/4 v0, -0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    const/4 p2, 0x0

    .line 811
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->getScreenLayoutX(I)I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_1

    return p2

    .line 814
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

    .line 815
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getChildCount()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1

    .line 817
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge p2, v1, :cond_4

    .line 818
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->getScreenLayoutX(I)I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-le p1, v1, :cond_3

    add-int/lit8 v1, p2, 0x1

    .line 819
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

    .line 825
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

    .line 826
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 827
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p1

    sub-int/2addr p1, p2

    add-int/lit8 p2, p1, -0x1

    .line 831
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

    .line 1185
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 1186
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getVisualPosition(I)I

    move-result v0

    .line 1189
    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move p1, v3

    goto/16 :goto_6

    .line 1235
    :pswitch_1
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->getFixedGapModeStartPoint()I

    move-result p1

    .line 1236
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    goto/16 :goto_6

    .line 1239
    :pswitch_2
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

    goto/16 :goto_6

    .line 1226
    :pswitch_3
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    div-int/2addr p1, v1

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeCurrentGap:I

    if-le v1, v4, :cond_1

    .line 1228
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeCurrentGap:I

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeCurrentGap:I

    .line 1230
    :cond_1
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

    goto/16 :goto_6

    .line 1201
    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object p1

    .line 1202
    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    div-int/2addr v2, v5

    .line 1203
    iget-object v5, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    if-ne p1, v5, :cond_2

    .line 1204
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result v1

    add-int/2addr p1, v1

    goto/16 :goto_6

    .line 1205
    :cond_2
    iget-object v5, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    if-ne p1, v5, :cond_4

    .line 1206
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

    .line 1207
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 1208
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1209
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v1

    goto/16 :goto_6

    :cond_3
    move p1, v1

    goto/16 :goto_6

    .line 1212
    :cond_4
    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v5, v5

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 1213
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v6

    iget-object v7, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    if-nez v7, :cond_5

    move v7, v1

    goto :goto_0

    :cond_5
    move v7, v4

    :goto_0
    sub-int/2addr v6, v7

    .line 1214
    iget-object v7, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    if-nez v7, :cond_6

    move v7, v1

    goto :goto_1

    :cond_6
    move v7, v4

    :goto_1
    sub-int/2addr v6, v7

    .line 1215
    iget-object v7, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    if-nez v7, :cond_7

    move v7, v1

    goto :goto_2

    :cond_7
    move v7, v2

    .line 1216
    :goto_2
    iget-object v8, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    if-nez v8, :cond_8

    move v8, v1

    goto :goto_3

    :cond_8
    move v8, v2

    .line 1217
    :goto_3
    iget v9, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    sub-int/2addr v9, v7

    sub-int/2addr v9, v8

    int-to-float v8, v9

    .line 1218
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

    .line 1220
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v8

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v8, v10

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeFooter:Landroid/view/View;

    if-eqz v10, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    add-int/2addr v2, p1

    div-int/lit8 p1, v2, 0x2

    goto :goto_4

    :cond_9
    move p1, v1

    :goto_4
    add-int/2addr v8, p1

    add-int/2addr v8, v7

    mul-int/2addr v6, v5

    sub-int/2addr v9, v6

    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    sub-int/2addr v9, p1

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 1222
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mPreviewModeHeader:Landroid/view/View;

    if-nez p1, :cond_a

    goto :goto_5

    :cond_a
    move v1, v4

    :goto_5
    sub-int p1, v0, v1

    mul-int/2addr p1, v5

    add-int/2addr p1, v8

    goto :goto_6

    .line 1191
    :pswitch_5
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    if-gt p1, v1, :cond_b

    .line 1192
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr p1, v2

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    mul-int/2addr v2, v0

    add-int p1, v1, v2

    goto :goto_6

    .line 1195
    :cond_b
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

    :goto_6
    if-ne p1, v3, :cond_c

    .line 1243
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result p1

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    mul-int/2addr v1, v0

    add-int/2addr p1, v1

    .line 1244
    iget-boolean v1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutScreensSeamless:Z

    if-nez v1, :cond_c

    .line 1245
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    div-int/2addr v1, v0

    add-int/2addr p1, v1

    .line 1248
    :cond_c
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenLayoutMeasureDiffX:I

    add-int/2addr p1, v0

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected getScreenLayoutY(I)I
    .locals 2

    .line 1258
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingTop()I

    move-result p1

    .line 1259
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mIgnoreCenterY:Z

    if-eqz v0, :cond_0

    return p1

    .line 1261
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1266
    :cond_1
    :pswitch_0
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

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getScreenSnapDuration()I
    .locals 1

    .line 1844
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSnapDuration:I

    return v0
.end method

.method public getScreenSnapMaxDuration()I
    .locals 2

    .line 201
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSnapDuration:I

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getScreenTransitionType()I
    .locals 1

    .line 2145
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->getTransitionType()I

    move-result v0

    return v0
.end method

.method protected getScrollLeftBound()I
    .locals 1

    .line 2362
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollLeftBound:I

    return v0
.end method

.method protected getScrollRightBound()I
    .locals 1

    .line 2366
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollRightBound:I

    return v0
.end method

.method protected getScrollStartX()I
    .locals 1

    .line 2225
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    return v0
.end method

.method protected getSnapBound()[I
    .locals 5

    .line 972
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 973
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v0, v0

    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 974
    :goto_0
    new-array v2, v2, [I

    const/4 v3, 0x1

    .line 975
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v4

    sub-int/2addr v4, v0

    aput v4, v2, v3

    .line 976
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollLeftBound()I

    move-result v3

    add-int/2addr v3, v0

    aput v3, v2, v1

    return-object v2
.end method

.method protected getSnapDuration(II)I
    .locals 2

    .line 1834
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSnapDuration:I

    mul-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    div-int/2addr p1, v0

    .line 1835
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenSnapMaxDuration()I

    move-result v0

    .line 1834
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

    .line 1762
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr v0, p1

    .line 1763
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result p1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    div-int/2addr p1, v0

    .line 1764
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

    .line 1443
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    return v0
.end method

.method public getUniformLayoutModeCurrentGap()I
    .locals 1

    .line 1162
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeCurrentGap:I

    return v0
.end method

.method public getUniformLayoutModeMaxGap()I
    .locals 1

    .line 1166
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    return v0
.end method

.method public getVisibleRange()I
    .locals 1

    .line 1930
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    return v0
.end method

.method getVisualPosition(I)I
    .locals 4

    .line 1170
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1181
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

    .line 1172
    :cond_2
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1173
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    if-gt v0, v2, :cond_3

    .line 1174
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    return v0

    .line 1176
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

    .line 1177
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

    .line 1491
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartValue:F

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollCurrentValue:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1492
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const-string v1, "Scroll is not update, abort the event"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected isScrollable()Z
    .locals 3

    .line 1072
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return v1

    .line 1077
    :pswitch_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-nez v0, :cond_1

    .line 1078
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

    .line 1088
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isScrollingOrSlidingState()Z
    .locals 3

    .line 2422
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

    .line 1277
    invoke-super {p0}, Lcom/miui/launcher/views/LauncherViewGroup;->onAttachedToWindow()V

    .line 1278
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->computeScroll()V

    .line 1279
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->showSlideBar()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 2432
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_9

    .line 2433
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->abandonGenericScrollEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2439
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v0

    and-int/2addr v0, v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 2441
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    move v2, v0

    move v0, v3

    goto :goto_0

    .line 2443
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    const/16 v2, 0xa

    .line 2444
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .line 2446
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

    .line 2450
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

    .line 2454
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    add-int/2addr p1, v1

    goto :goto_3

    .line 2456
    :cond_7
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_3
    if-ltz p1, :cond_8

    .line 2458
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_8

    .line 2459
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    return v1

    :cond_8
    return v5

    .line 2466
    :cond_9
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 2377
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2378
    const-class v0, Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 2383
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2384
    const-class v0, Lcom/miui/home/launcher/ScreenView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2385
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

    .line 2386
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

    .line 2387
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2389
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

    .line 2390
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1500
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1544
    :pswitch_0
    invoke-virtual {p0, p1, v4}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto/16 :goto_0

    .line 1502
    :pswitch_1
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 1503
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    .line 1505
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1547
    :pswitch_2
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const-string v1, "oninterceput up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->checkVerticalFling(Landroid/view/MotionEvent;)V

    .line 1549
    invoke-virtual {p0, p1, v4}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 1510
    :pswitch_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1511
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1512
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1513
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->recycle()V

    .line 1515
    iput-boolean v4, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentGestureFinished:Z

    .line 1516
    iput-boolean v4, p0, Lcom/miui/home/launcher/ScreenView;->mTouchIntercepted:Z

    .line 1519
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    .line 1520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    .line 1521
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionY:F

    .line 1522
    iput-boolean v4, p0, Lcom/miui/home/launcher/ScreenView;->mPinIned:Z

    .line 1524
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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1526
    iput-boolean v3, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    .line 1527
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const-string v1, "not intercept"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1534
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->interceptDownWhenScrolling()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1535
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->cancelScroll()V

    .line 1536
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const-string v1, "onIntercept on Scrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    invoke-virtual {p0, p1, v3}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    :cond_2
    :goto_0
    const/4 v0, 0x2

    .line 1553
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-eq v0, v1, :cond_3

    .line 1554
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1557
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

    .line 1376
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/miui/home/launcher/ScreenView;->doSetFrame(IIII)Z

    .line 1378
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result p1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->updateIndicatorPositions(IZ)V

    .line 1380
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p1

    if-gtz p1, :cond_0

    return-void

    .line 1383
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->refreshScrollBound()Z

    move-result p2

    .line 1384
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->correctCurrentScreen(Z)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_3

    .line 1387
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_1

    goto :goto_1

    .line 1390
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result p4

    const/16 p5, 0x8

    if-eq p4, p5, :cond_2

    .line 1391
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->getScreenLayoutY(I)I

    move-result p4

    .line 1392
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->getScreenLayoutX(I)I

    move-result p5

    .line 1394
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p5

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p4

    .line 1393
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

    .line 1295
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 1298
    :goto_0
    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    if-ge v2, v5, :cond_0

    add-int v5, v2, v0

    .line 1299
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1301
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 1304
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1303
    invoke-static {p1, v7, v8}, Lcom/miui/home/launcher/ScreenView;->getChildMeasureSpec(III)I

    move-result v7

    .line 1306
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1305
    invoke-static {p2, v8, v6}, Lcom/miui/home/launcher/ScreenView;->getChildMeasureSpec(III)I

    move-result v6

    .line 1308
    invoke-virtual {v5, v7, v6}, Landroid/view/View;->measure(II)V

    .line 1309
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1310
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

    .line 1317
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1318
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 1321
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingRight()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1320
    invoke-static {p1, v9, v10}, Lcom/miui/home/launcher/ScreenView;->getChildMeasureSpec(III)I

    move-result v9

    .line 1324
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingTop()I

    move-result v10

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1322
    invoke-static {p2, v10, v8}, Lcom/miui/home/launcher/ScreenView;->getChildMeasureSpec(III)I

    move-result v8

    .line 1327
    invoke-virtual {v7, v9, v8}, Landroid/view/View;->measure(II)V

    .line 1328
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1329
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1331
    :cond_1
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1332
    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1335
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v2, v4

    .line 1336
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v4, v7

    add-int/2addr v3, v4

    .line 1339
    invoke-static {v2, p1}, Lcom/miui/home/launcher/ScreenView;->resolveSize(II)I

    move-result v2

    .line 1340
    invoke-static {v3, p2}, Lcom/miui/home/launcher/ScreenView;->resolveSize(II)I

    move-result p2

    .line 1338
    invoke-virtual {p0, v2, p2}, Lcom/miui/home/launcher/ScreenView;->setMeasuredDimension(II)V

    if-lez v0, :cond_5

    .line 1343
    iput v5, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    .line 1344
    iput v6, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureHeight:I

    .line 1345
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenLayoutMeasureDiffX:I

    .line 1346
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    .line 1347
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLastVisibleRange:I

    .line 1349
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    if-lez p1, :cond_4

    .line 1350
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v0, 0x6

    const/4 v1, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x7

    if-ne p2, v0, :cond_2

    goto :goto_2

    .line 1353
    :cond_2
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    div-int/2addr p2, p1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    .line 1354
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    if-ne p1, v1, :cond_4

    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    if-le p1, p2, :cond_4

    .line 1355
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    .line 1356
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    sub-int/2addr p1, v5

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenLayoutMeasureDiffX:I

    goto :goto_3

    .line 1351
    :cond_3
    :goto_2
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    add-int/2addr p1, p2

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    add-int/2addr v0, p2

    div-int/2addr p1, v0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    .line 1360
    :cond_4
    :goto_3
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setOverScrollRatio(F)V

    .line 1361
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->updateScreenOffset()V

    :cond_5
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 2137
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2138
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

    .line 2140
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

    .line 2287
    check-cast p1, Lcom/miui/home/launcher/ScreenView$SavedState;

    .line 2288
    invoke-virtual {p1}, Lcom/miui/home/launcher/ScreenView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/miui/launcher/views/LauncherViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2289
    iget v0, p1, Lcom/miui/home/launcher/ScreenView$SavedState;->currentScreen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2290
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

    .line 2280
    new-instance v0, Lcom/miui/home/launcher/ScreenView$SavedState;

    invoke-super {p0}, Lcom/miui/launcher/views/LauncherViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/ScreenView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2281
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

    .line 466
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x0

    .line 467
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreenInner(I)V

    .line 468
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    :cond_0
    return-void
.end method

.method public onSecondaryPointerDown(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1706
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    .line 1707
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollX:F

    .line 1708
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->init(I)V

    .line 1709
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 p1, 0x1

    .line 1710
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    return-void
.end method

.method public onSecondaryPointerMove(Landroid/view/MotionEvent;I)V
    .locals 1

    .line 1720
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p2

    .line 1721
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    sub-float/2addr v0, p2

    .line 1722
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    const/4 p2, 0x0

    cmpl-float p2, v0, p2

    if-eqz p2, :cond_0

    .line 1725
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollX:F

    add-float/2addr p2, v0

    float-to-int p2, p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/miui/home/launcher/ScreenView;->scrollTo(II)V

    goto :goto_0

    .line 1727
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->awakenScrollBars()Z

    .line 1730
    :goto_0
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSecondaryPointerUp(Landroid/view/MotionEvent;I)V
    .locals 0

    .line 1714
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ScreenView;->snapByVelocity(I)V

    .line 1715
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 1716
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1647
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentGestureFinished:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1649
    :cond_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchIntercepted:Z

    if-eqz v0, :cond_1

    .line 1650
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 1653
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 1667
    :pswitch_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_2

    .line 1668
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->cancelScroll()V

    .line 1669
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    const/16 v2, 0x3e8

    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mMaximumVelocity:I

    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    invoke-virtual {v0, v2, v4, v5}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->getXVelocity(III)F

    move-result v0

    float-to-int v0, v0

    const/4 v2, 0x3

    .line 1671
    invoke-virtual {p0, v0, v2}, Lcom/miui/home/launcher/ScreenView;->snapByVelocity(II)V

    .line 1673
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 1658
    :pswitch_1
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1659
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1662
    :cond_3
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_7

    .line 1663
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->scrollToFollowMotionEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1676
    :pswitch_2
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const-string v2, "on touch up"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_4

    .line 1678
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    const-string v2, "snapByVelocity"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/ScreenView;->snapByVelocity(I)V

    goto :goto_0

    .line 1681
    :cond_4
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->checkVerticalFling(Landroid/view/MotionEvent;)V

    .line 1683
    :goto_0
    invoke-virtual {p0, p1, v3}, Lcom/miui/home/launcher/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 1686
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v2, 0xff00

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x8

    .line 1688
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1689
    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    if-ne v2, v4, :cond_7

    if-nez v0, :cond_6

    move v3, v1

    .line 1694
    :cond_6
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    .line 1695
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    .line 1696
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->init(I)V

    .line 1701
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

    .line 1993
    instance-of v0, p1, Lcom/miui/home/launcher/ScreenView$Indicator;

    if-eqz v0, :cond_0

    .line 1994
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    goto :goto_0

    .line 1996
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenCounter:I

    .line 1998
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->onViewRemoved(Landroid/view/View;)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 2396
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

    .line 2407
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p2

    if-ge p1, p2, :cond_3

    .line 2408
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getCurrentScreenIndex()I

    move-result p1

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreen(I)V

    return v0

    .line 2401
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

    .line 2402
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

    .line 2332
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isSpringOverScroll()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2334
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2335
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollLeftBound()I

    move-result v1

    add-int/2addr v1, v0

    int-to-float v1, v1

    .line 2336
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v2, v2

    .line 2337
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

    .line 2343
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

    .line 981
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    .line 982
    iget-boolean v1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutScreensSeamless:Z

    if-eqz v1, :cond_0

    .line 983
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    mul-int/2addr v0, v1

    .line 985
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollLeftBound()I

    move-result v1

    .line 986
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v2

    .line 987
    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollLeftBound:I

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 988
    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollRightBound:I

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 989
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 992
    iget v6, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    if-eq v6, v7, :cond_1

    const/4 v8, 0x6

    if-ne v6, v8, :cond_2

    .line 994
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

    .line 998
    :cond_3
    iget v6, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v6, v6

    iget v8, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    .line 999
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/ScreenView;->getScreenSnapX(I)I

    move-result v8

    sub-int/2addr v8, v6

    iput v8, p0, Lcom/miui/home/launcher/ScreenView;->mScrollLeftBound:I

    .line 1000
    iget-boolean v8, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-nez v8, :cond_4

    .line 1001
    invoke-direct {p0, v5}, Lcom/miui/home/launcher/ScreenView;->getScreenSnapX(I)I

    move-result v0

    add-int/2addr v0, v6

    iget v6, p0, Lcom/miui/home/launcher/ScreenView;->mScrollOffset:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollRightBound:I

    goto :goto_0

    .line 1002
    :cond_4
    iget v8, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    .line 1003
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollLeftBound:I

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollRightBound:I

    goto :goto_0

    .line 1006
    :cond_5
    invoke-virtual {p0, v5}, Lcom/miui/home/launcher/ScreenView;->getVisualPosition(I)I

    move-result v8

    .line 1007
    iget v9, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    div-int/2addr v8, v9

    mul-int/2addr v8, v0

    add-int/2addr v8, v6

    iput v8, p0, Lcom/miui/home/launcher/ScreenView;->mScrollRightBound:I

    .line 1010
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_9

    .line 1011
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_6

    move v13, v5

    move v5, v3

    move v3, v13

    .line 1016
    :cond_6
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    move v6, v4

    :goto_1
    if-ge v6, v0, :cond_9

    .line 1018
    iget-object v8, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v8, v6}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicatorPoint(I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 1020
    iget-object v9, p0, Lcom/miui/home/launcher/ScreenView;->mContext:Landroid/content/Context;

    const v10, 0x7f10030d

    new-array v11, v7, [Ljava/lang/Object;

    add-int/lit8 v12, v6, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v4

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1021
    invoke-virtual {v8, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-lt v6, v3, :cond_7

    if-gt v6, v5, :cond_7

    move v9, v4

    goto :goto_2

    :cond_7
    const/16 v9, 0x8

    .line 1022
    :goto_2
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1026
    :cond_9
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollLeftBound()I

    move-result v0

    if-ne v1, v0, :cond_a

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v0

    if-ne v2, v0, :cond_a

    .line 1027
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

    .line 2044
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2045
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ScreenView;->removeScreensInLayout(II)V

    .line 2046
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->requestLayout()V

    .line 2047
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->invalidate()V

    return-void
.end method

.method public removeIndicator(Landroid/view/View;)V
    .locals 1

    .line 2011
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 2012
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 2016
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mIndicatorCount:I

    .line 2017
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViewAt(I)V

    return-void

    .line 2013
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "The view passed through the parameter must be indicator."

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeOutAllScreens()[Landroid/view/View;
    .locals 3

    .line 2059
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    .line 2060
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2061
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2063
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->removeAllScreens()V

    return-object v0
.end method

.method public removeScreen(I)V
    .locals 2

    .line 2021
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 2025
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    if-ne p1, v0, :cond_1

    .line 2026
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-nez v0, :cond_0

    .line 2027
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    .line 2028
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreen(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 2030
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_1

    add-int/lit8 v0, p1, -0x1

    .line 2032
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    .line 2037
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_2

    .line 2038
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->removeScreenIndicatorPoint(I)V

    .line 2040
    :cond_2
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViewAt(I)V

    return-void

    .line 2022
    :cond_3
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string v0, "The view specified by the index must be a screen."

    invoke-direct {p1, v0}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeScreenTransitionType(I)V
    .locals 1

    .line 2162
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->removeTransitionType(I)Z

    .line 2163
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->isValidType()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2164
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->getOverShotTension()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setOvershootTension(F)V

    .line 2165
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

    .line 2068
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2069
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2071
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz v0, :cond_1

    .line 2072
    invoke-virtual {v0, p1, p2}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->removeScreenIndicatorPoint(II)V

    .line 2074
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViewsInLayout(II)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    .line 1955
    instance-of v0, p1, Lcom/miui/home/launcher/ScreenView$Indicator;

    if-eqz v0, :cond_0

    .line 1956
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->throwRemoveIndicatorException()V

    .line 1958
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViewAt(I)V
    .locals 1

    .line 1974
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 1975
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->throwRemoveIndicatorException()V

    .line 1977
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViewAt(I)V

    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1

    .line 1962
    instance-of v0, p1, Lcom/miui/home/launcher/ScreenView$Indicator;

    if-eqz v0, :cond_0

    .line 1963
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->throwRemoveIndicatorException()V

    .line 1965
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public removeViews(II)V
    .locals 2

    add-int v0, p1, p2

    .line 1985
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1986
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->throwRemoveIndicatorException()V

    .line 1988
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViews(II)V

    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2

    add-int v0, p1, p2

    .line 1968
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1969
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->throwRemoveIndicatorException()V

    .line 1971
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViewsInLayout(II)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2

    .line 1411
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1412
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1413
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrolling()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1414
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(I)I

    const/4 p1, 0x1

    return p1

    .line 1419
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/home/launcher/ScreenView;->superRequestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public resetScreenScrollRange()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 219
    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ScreenView;->setScreenScrollRange(II)V

    const/4 v0, 0x1

    .line 220
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->correctCurrentScreen(Z)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 5

    .line 1106
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v0

    .line 1107
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->isScrollable()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 1108
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollLeftBound()I

    move-result v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v4

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    .line 1109
    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollX:F

    .line 1110
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

    .line 1112
    :goto_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v4

    if-le v0, v4, :cond_2

    if-eqz v1, :cond_2

    .line 1113
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollX:F

    int-to-float v4, v0

    sub-float/2addr v1, v4

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/ScreenView;->setTranslationX(F)V

    .line 1114
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1117
    :cond_2
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollX:F

    float-to-int v1, v1

    invoke-super {p0, v1, p2}, Lcom/miui/launcher/views/LauncherViewGroup;->scrollTo(II)V

    .line 1120
    :cond_3
    iget-boolean p2, p0, Lcom/miui/home/launcher/ScreenView;->mPushGestureEnabled:Z

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result p2

    if-ne v0, p2, :cond_6

    iget-boolean p2, p0, Lcom/miui/home/launcher/ScreenView;->mGestureTrigged:Z

    if-nez p2, :cond_6

    .line 1121
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getTouchState()I

    move-result p2

    if-ne p2, v3, :cond_6

    .line 1122
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    sub-int v1, p1, v0

    add-int/2addr p2, v1

    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    .line 1123
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getSnapBound()[I

    move-result-object p2

    .line 1124
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

    .line 1126
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenDensity()F

    move-result v0

    div-float/2addr p2, v0

    const/high16 v0, 0x42480000    # 50.0f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_6

    .line 1127
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    sub-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ScreenView;->onPushGesture(I)V

    :cond_6
    return-void
.end method

.method public scrollToScreen(I)V
    .locals 3

    .line 1031
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_0

    .line 1032
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->calibrateCurrentScreenIndex(I)I

    move-result p1

    .line 1034
    :cond_0
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 1035
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    rem-int v1, p1, v0

    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_2

    add-int/lit8 v1, v0, -0x1

    .line 1036
    rem-int v0, p1, v0

    sub-int/2addr v1, v0

    add-int/2addr p1, v1

    .line 1039
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->getScreenScrollX(I)I

    move-result p1

    .line 1040
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollRightBound()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mChildScreenMeasureWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_3

    .line 1041
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

    .line 1043
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ScreenView;->scrollTo(II)V

    return-void
.end method

.method protected scrolledFarEnough(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1568
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mPinIned:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1571
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1572
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/ScreenView;->mLastMotionY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1573
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 1574
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

    .line 1575
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

    .line 1578
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v5, p0, Lcom/miui/home/launcher/ScreenView;->mSecondPointerStartX:F

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1579
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

    .line 1584
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

    .line 2089
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 3

    .line 1903
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_0

    .line 1904
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->calibrateCurrentScreenIndex(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1906
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1909
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setCurrentScreenInner(I)V

    .line 1910
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->cancelScroll()V

    .line 1911
    iget p1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->scrollToScreen(I)V

    return-void
.end method

.method protected setCurrentScreenInner(I)V
    .locals 3

    .line 1915
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->updateSeekPoints(I)V

    .line 1916
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    const/4 v0, -0x1

    .line 1917
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    .line 1918
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentScreenInner:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setEnableReverseDrawingMode(Z)V
    .locals 0

    .line 2182
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setChildrenDrawingOrderEnabled(Z)V

    .line 2183
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mEnableReverseDrawingMode:Z

    return-void
.end method

.method public setFixedGap(I)V
    .locals 0

    .line 189
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mFixedGap:I

    return-void
.end method

.method public setIndicatorBarVisibility(I)V
    .locals 0

    .line 774
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setSeekBarVisibility(I)V

    .line 775
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->setSlideBarVisibility(I)V

    return-void
.end method

.method public setMaximumSnapVelocity(I)V
    .locals 0

    .line 205
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mMaximumVelocity:I

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3

    .line 2099
    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 2100
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2102
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

    .line 967
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mOverScrollRatio:F

    .line 968
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->requestLayout()V

    return-void
.end method

.method public setOvershootTension(F)V
    .locals 0

    .line 193
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mOvershootTension:F

    return-void
.end method

.method public setPushGestureEnabled(Z)V
    .locals 0

    .line 224
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mPushGestureEnabled:Z

    return-void
.end method

.method public setScreenLayoutMode(I)V
    .locals 2

    .line 793
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    if-eq v0, p1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const v0, 0x7fffffff

    .line 795
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    .line 797
    :cond_0
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    .line 798
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setScreenScrollRange(II)V
    .locals 0

    .line 213
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollLeftBound:I

    .line 214
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mScreenScrollRightBound:I

    .line 215
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->refreshScrollBound()Z

    return-void
.end method

.method public setScreenSnapDuration(I)V
    .locals 0

    .line 197
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSnapDuration:I

    return-void
.end method

.method public setScreenTransitionType(I)I
    .locals 1

    .line 2149
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->setTransitionType(I)I

    move-result p1

    .line 2150
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->getOverShotTension()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setOvershootTension(F)V

    .line 2151
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->getScreenSnapDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->setScreenSnapDuration(I)V

    return p1
.end method

.method public setScrollWholeScreen(Z)V
    .locals 0

    .line 209
    iput-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    return-void
.end method

.method public setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 536
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-nez v0, :cond_0

    .line 537
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->createIndicatorView()Lcom/miui/home/launcher/ScreenView$IndicatorView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    .line 539
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->setLayoutTransition()V

    .line 540
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 541
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setScreenIndicatorLayoutMode(I)V

    .line 542
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setAnimationCacheEnabled(Z)V

    .line 543
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {p0, v0, p1}, Lcom/miui/home/launcher/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_0

    .line 545
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 548
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p1, :cond_2

    .line 549
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->removeIndicator(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 550
    iput-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    :cond_2
    :goto_0
    return-void
.end method

.method public setSeekBarVisibility(I)V
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-nez v0, :cond_0

    return-void

    .line 782
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->setVisibility(I)V

    return-void
.end method

.method public setSeekPointResource(I)V
    .locals 3

    .line 477
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mSeekPointResId:I

    if-eq v0, p1, :cond_1

    .line 478
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mSeekPointResId:I

    .line 479
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    if-eqz p1, :cond_1

    .line 480
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 482
    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenSeekBar:Lcom/miui/home/launcher/ScreenView$IndicatorView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ScreenView$IndicatorView;->getScreenIndicatorPoint(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 484
    iget v2, p0, Lcom/miui/home/launcher/ScreenView;->mSeekPointResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 485
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

    const v0, 0x7f0804c4

    const v1, 0x7f0804c5

    const/4 v2, 0x0

    .line 714
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/home/launcher/ScreenView;->setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V

    return-void
.end method

.method public setSlideBarPosition(Landroid/widget/FrameLayout$LayoutParams;IIZ)V
    .locals 2

    .line 722
    iput-boolean p4, p0, Lcom/miui/home/launcher/ScreenView;->mIsSlideBarAutoHide:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_1

    .line 724
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-nez v0, :cond_0

    .line 725
    new-instance v0, Lcom/miui/home/launcher/ScreenView$SlideBar;

    iget-object v1, p0, Lcom/miui/home/launcher/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/miui/home/launcher/ScreenView$SlideBar;-><init>(Lcom/miui/home/launcher/ScreenView;Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    .line 726
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    new-instance p3, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;

    invoke-direct {p3, p0, p4}, Lcom/miui/home/launcher/ScreenView$SliderTouchListener;-><init>(Lcom/miui/home/launcher/ScreenView;Lcom/miui/home/launcher/ScreenView$1;)V

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 727
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setAnimationCacheEnabled(Z)V

    .line 728
    iget-object p2, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    invoke-virtual {p0, p2, p1}, Lcom/miui/home/launcher/ScreenView;->addIndicator(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_0

    .line 730
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 733
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-eqz p1, :cond_2

    .line 734
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->removeIndicator(Landroid/view/View;)V

    .line 735
    iput-object p4, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    :cond_2
    :goto_0
    return-void
.end method

.method public setSlideBarVisibility(I)V
    .locals 1

    .line 786
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mSlideBar:Lcom/miui/home/launcher/ScreenView$SlideBar;

    if-nez v0, :cond_0

    return-void

    .line 789
    :cond_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/ScreenView$SlideBar;->setVisibility(I)V

    return-void
.end method

.method protected setTouchState(Landroid/view/MotionEvent;I)V
    .locals 4

    .line 1447
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    const/4 v1, 0x1

    if-eq v0, p2, :cond_0

    if-ne p2, v1, :cond_0

    .line 1448
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollingStateStartX:I

    .line 1449
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mLinearScrollX:F

    .line 1451
    :cond_0
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    .line 1453
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

    .line 1454
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-nez v0, :cond_2

    const/4 p1, -0x1

    .line 1455
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    .line 1456
    iput-boolean v3, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    .line 1457
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mGestureVelocityTracker:Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ScreenView$GestureVelocityTracker;->recycle()V

    .line 1458
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->onScrollInteractionEnd()V

    const/4 p1, 0x0

    .line 1459
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mLinearScrollX:F

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 1463
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mActivePointerId:I

    .line 1467
    :cond_3
    iget-boolean v0, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    if-eqz v0, :cond_4

    .line 1468
    iput-boolean v3, p0, Lcom/miui/home/launcher/ScreenView;->mAllowLongPress:Z

    .line 1472
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1473
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1476
    :cond_4
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_5

    .line 1477
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollX:F

    .line 1478
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->scrollToFollowMotionEvent(Landroid/view/MotionEvent;)V

    .line 1482
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->showSlideBar()V

    .line 1483
    iget-boolean p1, p0, Lcom/miui/home/launcher/ScreenView;->mPushGestureEnabled:Z

    if-eqz p1, :cond_6

    if-ne p2, v1, :cond_6

    .line 1485
    iput-boolean v3, p0, Lcom/miui/home/launcher/ScreenView;->mGestureTrigged:Z

    .line 1486
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartX:I

    :cond_6
    return-void
.end method

.method public setUniformLayoutModeMaxGap(I)Z
    .locals 2

    .line 1151
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1152
    iget v0, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    if-eq v0, p1, :cond_0

    .line 1153
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mUniformLayoutModeMaxGap:I

    .line 1154
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

    .line 1285
    invoke-direct {p0}, Lcom/miui/home/launcher/ScreenView;->showSlideBar()V

    .line 1287
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected skipNextAutoLayoutAnimation()V
    .locals 3

    .line 1133
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mVisibleRange:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1134
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1135
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;

    if-eqz v1, :cond_0

    .line 1136
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

    .line 1744
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

    .line 1746
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    .line 1747
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    .line 1746
    :cond_1
    invoke-direct {p0, p2, v0, v2}, Lcom/miui/home/launcher/ScreenView;->getSnapToScreenIndex(III)I

    move-result p2

    .line 1748
    invoke-virtual {p0, p2, p1, v1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(IIZ)I

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_4

    .line 1750
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    .line 1751
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    .line 1750
    :goto_1
    invoke-direct {p0, p2, v0, v2}, Lcom/miui/home/launcher/ScreenView;->getSnapToScreenIndex(III)I

    move-result p2

    .line 1752
    invoke-virtual {p0, p2, p1, v1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(IIZ)I

    goto :goto_2

    :cond_4
    const/4 v2, 0x3

    if-ne p2, v2, :cond_5

    .line 1754
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mCurrentScreenIndex:I

    invoke-virtual {p0, p2, p1, v1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(IIZ)I

    goto :goto_2

    .line 1756
    :cond_5
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ScreenView;->getSnapUnitIndex(I)I

    move-result p1

    const/4 p2, 0x0

    .line 1757
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(IIZ)I

    :goto_2
    return-void
.end method

.method public snapToScreen(I)I
    .locals 1

    const/4 v0, 0x0

    .line 1774
    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/home/launcher/ScreenView;->snapToScreen(IIZ)I

    move-result p1

    return p1
.end method

.method protected snapToScreen(IIZ)I
    .locals 6

    .line 1789
    iget p3, p0, Lcom/miui/home/launcher/ScreenView;->mScreenContentWidth:I

    const/4 v0, 0x0

    if-gtz p3, :cond_0

    return v0

    .line 1792
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->cancelScroll()V

    .line 1793
    iget-boolean p3, p0, Lcom/miui/home/launcher/ScreenView;->mScrollWholeScreen:Z

    if-eqz p3, :cond_1

    .line 1794
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/ScreenView;->calibrateCurrentScreenIndex(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    goto :goto_0

    .line 1796
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

    .line 1801
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 1803
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getSnapBound()[I

    move-result-object p3

    .line 1804
    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mScreenLayoutMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x6

    if-ne v1, v3, :cond_3

    .line 1806
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

    .line 1807
    rem-int v3, v1, v3

    sub-int/2addr v4, v3

    add-int/2addr v1, v4

    iput v1, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    .line 1810
    :cond_3
    aget v1, p3, v0

    aget v3, p3, v2

    iget v4, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    .line 1811
    invoke-direct {p0, v4}, Lcom/miui/home/launcher/ScreenView;->getScreenScrollX(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getSnapOverScroll()I

    move-result v5

    add-int/2addr v4, v5

    .line 1810
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1812
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result v3

    sub-int v3, v1, v3

    if-nez v3, :cond_4

    return v0

    .line 1816
    :cond_4
    aget v4, p3, v0

    if-eq v1, v4, :cond_6

    aget p3, p3, v2

    if-ne v1, p3, :cond_5

    goto :goto_1

    .line 1819
    :cond_5
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getSnapOverScroll()I

    move-result p3

    iput p3, p0, Lcom/miui/home/launcher/ScreenView;->mSnapDelta:I

    goto :goto_2

    .line 1817
    :cond_6
    :goto_1
    iput v0, p0, Lcom/miui/home/launcher/ScreenView;->mSnapDelta:I

    .line 1822
    :goto_2
    invoke-virtual {p0, v3, p1}, Lcom/miui/home/launcher/ScreenView;->getSnapDuration(II)I

    move-result p1

    .line 1823
    iget p3, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    invoke-virtual {p0, p3}, Lcom/miui/home/launcher/ScreenView;->beforeSnapToScreen(I)V

    .line 1824
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScrollX()I

    move-result p3

    neg-int p2, p2

    invoke-virtual {p0, p3, v3, p2}, Lcom/miui/home/launcher/ScreenView;->startScroll(III)V

    .line 1825
    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mNextScreenIndex:I

    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ScreenView;->updateSeekPoints(I)V

    .line 1826
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->invalidate()V

    return p1
.end method

.method public snapToScreen(Lcom/miui/home/launcher/CellScreen;)I
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1779
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

    .line 1848
    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/ScreenView;->startScroll(IIIFF)V

    return-void
.end method

.method public startScroll(IIIFF)V
    .locals 2

    .line 1855
    iget-object v0, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, Lcom/miui/home/launcher/ScreenView;->mLastScrollXInDraw:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    add-int/2addr p2, p1

    .line 1856
    iput p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollTargetValue:I

    int-to-float p1, p1

    .line 1857
    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollStartValue:F

    iput p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollCurrentValue:F

    .line 1858
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget p2, p0, Lcom/miui/home/launcher/ScreenView;->mScrollTargetValue:I

    int-to-float p2, p2

    invoke-static {p5}, Lcom/miui/home/launcher/animate/SpringAnimator;->stiffnessConvert(F)F

    move-result p5

    invoke-static {p2, p4, p5}, Lcom/miui/home/launcher/animate/SpringAnimator;->getSpringForce(FFF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 1859
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 1860
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->mScrollXAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 1861
    iget-object p1, p0, Lcom/miui/home/launcher/ScreenView;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startScroll:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/miui/home/launcher/ScreenView;->mScrollTargetValue:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected superDrawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 0

    .line 1406
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/launcher/views/LauncherViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p1

    return p1
.end method

.method public superRemoveViewAt(I)V
    .locals 0

    .line 1981
    invoke-super {p0, p1}, Lcom/miui/launcher/views/LauncherViewGroup;->removeViewAt(I)V

    return-void
.end method

.method protected superRequestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 0

    .line 1423
    invoke-super {p0, p1, p2, p3}, Lcom/miui/launcher/views/LauncherViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method protected updateChildStaticTransformation(Landroid/view/View;)V
    .locals 11

    .line 2170
    instance-of v0, p1, Lcom/miui/home/launcher/ScreenView$Indicator;

    if-eqz v0, :cond_0

    return-void

    .line 2173
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    .line 2174
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    div-float v2, v0, v2

    .line 2176
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

    .line 2177
    iget-object v4, p0, Lcom/miui/home/launcher/ScreenView;->mTransitionEffect:Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;

    .line 2178
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

    .line 2177
    invoke-virtual/range {v4 .. v10}, Lcom/miui/home/launcher/transitioneffects/TransitionEffectSwitcher;->updateTransformation(FFFFLandroid/view/View;Landroid/view/ViewGroup;)V

    return-void
.end method
