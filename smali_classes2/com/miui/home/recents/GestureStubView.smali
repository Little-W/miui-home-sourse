.class public Lcom/miui/home/recents/GestureStubView;
.super Landroid/widget/FrameLayout;
.source "GestureStubView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplU;,
        Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplT;,
        Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;,
        Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;,
        Lcom/miui/home/recents/GestureStubView$H;,
        Lcom/miui/home/recents/GestureStubView$EventPosition;
    }
.end annotation


# static fields
.field public static SPECIAL_GESTURE_STUB_SIZE_DEVICES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static isUserSetUp:Z


# instance fields
.field private mAnimating:Z

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAssistX1:F

.field private mAssistX2:F

.field private mBackInvokeCallbackStarted:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrAction:I

.field private mCurrX:F

.field private mCurrY:F

.field private mDensity:F

.field private mDisableQuickSwitch:Z

.field private mDisableTouch:Z

.field private mDisableTouchBySwipeStatusBar:Z

.field private mDisplay:Landroid/view/Display;

.field private mDisplayListener:Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private mDownX:F

.field private mDownY:F

.field private mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

.field private mGestureStubDefaultSize:I

.field private mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

.field private mGestureStubPos:I

.field private mGestureStubSize:I

.field private mGesturesBackCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

.field private mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

.field private mHandler:Lcom/miui/home/recents/GestureStubView$H;

.field private mHideNotch:Z

.field private mIsFirstMove:Z

.field private mIsGestureAnimationEnabled:Z

.field private mIsGestureStarted:Z

.field private mIsInMinimizedMultiWindowMode:Z

.field private mIsInMultiWindowMode:Z

.field private mKeepHidden:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mLocation:[I

.field private mNeedAdaptRotation:Z

.field private mNeedAdjustArrowPosition:Z

.field private mNeedRender:Z

.field private mNotchRect:Landroid/graphics/Rect;

.field private mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

.field private mOnComputeInternalInsetsListener:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

.field private mPendingResetStatus:Z

.field private mRotation:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSettingsObserver:Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;

.field private mSwipeInRightDirection:Z

.field private mUseEmptyTouchableRegion:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/recents/GestureStubView;->SPECIAL_GESTURE_STUB_SIZE_DEVICES:Ljava/util/ArrayList;

    .line 90
    sget-object v0, Lcom/miui/home/recents/GestureStubView;->SPECIAL_GESTURE_STUB_SIZE_DEVICES:Ljava/util/ArrayList;

    const-string v1, "0b940aeeb95a73dd24f77c2dba06d09e"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lcom/miui/home/recents/GestureStubView;->SPECIAL_GESTURE_STUB_SIZE_DEVICES:Ljava/util/ArrayList;

    const-string v1, "c557153d20fefbdfd37b0ac0ae1c555e"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/miui/home/recents/GestureStubView;->SPECIAL_GESTURE_STUB_SIZE_DEVICES:Ljava/util/ArrayList;

    const-string v1, "1f5511294829e2350561dc93e1deac6d"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/miui/home/recents/GestureStubView;->SPECIAL_GESTURE_STUB_SIZE_DEVICES:Ljava/util/ArrayList;

    const-string v1, "061cc573d87ce90d5c3cf3b2291cb3bd"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/miui/home/recents/GestureStubView;->SPECIAL_GESTURE_STUB_SIZE_DEVICES:Ljava/util/ArrayList;

    const-string v1, "91d33b4943a4de7884534a1dfbcd88d7"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/miui/home/recents/GestureStubView;->SPECIAL_GESTURE_STUB_SIZE_DEVICES:Ljava/util/ArrayList;

    const-string v1, "f95133906d1eba86b61fc05be6aecd9c"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 352
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 137
    iput-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mLocation:[I

    const/4 v1, -0x1

    .line 139
    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mCurrAction:I

    .line 140
    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    .line 141
    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenHeight:I

    .line 142
    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    .line 143
    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 144
    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    const/4 v1, 0x0

    .line 145
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    .line 146
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mIsFirstMove:Z

    .line 148
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    .line 154
    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 155
    iput v2, p0, Lcom/miui/home/recents/GestureStubView;->mDensity:F

    .line 156
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdjustArrowPosition:Z

    .line 157
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mDisableQuickSwitch:Z

    .line 176
    new-instance v2, Lcom/miui/home/recents/GestureStubView$1;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/GestureStubView$1;-><init>(Lcom/miui/home/recents/GestureStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mOnComputeInternalInsetsListener:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    .line 189
    new-instance v2, Lcom/miui/home/recents/GestureStubView$2;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/GestureStubView$2;-><init>(Lcom/miui/home/recents/GestureStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 216
    new-instance v2, Lcom/miui/home/recents/GestureStubView$3;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/GestureStubView$3;-><init>(Lcom/miui/home/recents/GestureStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    .line 604
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mUseEmptyTouchableRegion:Z

    .line 618
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 354
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mContext:Landroid/content/Context;

    .line 356
    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 358
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    .line 359
    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    .line 361
    new-instance v0, Lcom/miui/home/recents/GestureStubView$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/GestureStubView$H;-><init>(Lcom/miui/home/recents/GestureStubView;Lcom/miui/home/recents/GestureStubView$1;)V

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    const-string v0, "window"

    .line 362
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    .line 364
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    .line 366
    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->closeForceDarkAllowed(Landroid/view/View;)V

    .line 368
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->initNotchRect()V

    .line 369
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->initGestureStubSize()V

    .line 370
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getGestureStubWindowParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    new-instance v0, Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;-><init>(Lcom/miui/home/recents/GestureStubView;Lcom/miui/home/recents/GestureStubView$1;)V

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisplayListener:Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;

    const-string v0, "display"

    .line 372
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v0, "keyguard"

    .line 373
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 374
    new-instance v0, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;-><init>(Lcom/miui/home/recents/GestureStubView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mSettingsObserver:Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    .line 376
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->isUserSetUp(Landroid/content/ContentResolver;)Z

    move-result p1

    sput-boolean p1, Lcom/miui/home/recents/GestureStubView;->isUserSetUp:Z

    .line 378
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mContext:Landroid/content/Context;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mVibrator:Landroid/os/Vibrator;

    const/4 p1, 0x1

    .line 379
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->setKeepHidden(Z)V

    .line 380
    sget-boolean p1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_U:Z

    if-eqz p1, :cond_0

    .line 381
    new-instance p1, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplU;

    invoke-direct {p1}, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplU;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    goto :goto_0

    .line 382
    :cond_0
    sget-boolean p1, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_T:Z

    if-eqz p1, :cond_1

    .line 383
    new-instance p1, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplT;

    invoke-direct {p1}, Lcom/miui/home/recents/GestureStubView$OnBackInvokedCallbackImplT;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/recents/GestureStubView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureStubView;->mUseEmptyTouchableRegion:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/home/recents/GestureStubView;)Z
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->isSwipeRightInDirection()Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/miui/home/recents/GestureStubView;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mAnimating:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/home/recents/GestureStubView;IZ)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/GestureStubView;->injectKeyEvent(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/home/recents/GestureStubView;)Landroid/app/KeyguardManager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/home/recents/GestureStubView;)Landroid/content/ContentResolver;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/miui/home/recents/GestureStubView;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/miui/home/recents/GestureStubView;)Landroid/content/Context;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/home/recents/GestureStubView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    return p0
.end method

.method static synthetic access$1600(Lcom/miui/home/recents/GestureStubView;)Landroid/os/Vibrator;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/miui/home/recents/GestureStubView;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/miui/home/recents/GestureStubView;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->injectKeyEvent(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/miui/home/recents/GestureStubView;)Landroid/view/MotionEvent;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/miui/home/recents/GestureStubView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/miui/home/recents/GestureStubView;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    return p0
.end method

.method static synthetic access$2300(Lcom/miui/home/recents/GestureStubView;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrY:F

    return p0
.end method

.method static synthetic access$2400(Lcom/miui/home/recents/GestureStubView;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->setKeepHidden(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GesturesBackController;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/miui/home/recents/GestureStubView;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mPendingResetStatus:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/miui/home/recents/GestureStubView;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->resetRenderProperty(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->hideGestureStub()V

    return-void
.end method

.method static synthetic access$2900(Lcom/miui/home/recents/GestureStubView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrAction:I

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/miui/home/recents/GestureStubView;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->injectMotionEvent(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->updateAssistXPosition()V

    return-void
.end method

.method static synthetic access$3200(Lcom/miui/home/recents/GestureStubView;)F
    .locals 0

    .line 59
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mDownX:F

    return p0
.end method

.method static synthetic access$3300(Lcom/miui/home/recents/GestureStubView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    return p0
.end method

.method static synthetic access$3400(Lcom/miui/home/recents/GestureStubView;Z)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->adaptRotation(Z)V

    return-void
.end method

.method static synthetic access$3502(Lcom/miui/home/recents/GestureStubView;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mHideNotch:Z

    return p1
.end method

.method static synthetic access$3602(Lcom/miui/home/recents/GestureStubView;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdaptRotation:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/miui/home/recents/GestureStubView;)I
    .locals 0

    .line 59
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    return p0
.end method

.method static synthetic access$400(Lcom/miui/home/recents/GestureStubView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    return p0
.end method

.method static synthetic access$402(Lcom/miui/home/recents/GestureStubView;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->clearMessages()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->renderView()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/home/recents/GestureStubView;)Z
    .locals 0

    .line 59
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdjustArrowPosition:Z

    return p0
.end method

.method static synthetic access$800(Lcom/miui/home/recents/GestureStubView;F)[I
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->calcBackArrowParamsAtNotchSide(F)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/home/recents/GestureStubView;I)Z
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->isInSpeedLimit(I)Z

    move-result p0

    return p0
.end method

.method private adaptAlignNotchArrowXStart()I
    .locals 2

    .line 514
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mHideNotch:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getNotchWidth()I

    move-result v0

    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x4

    if-gt v0, v1, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->isFocusWindowAdaptNotch()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 515
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getNotchHeight()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private adaptBesideNotchArrowXStart()I
    .locals 1

    .line 522
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mHideNotch:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->isFocusWindowAdaptNotch()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 523
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getNotchHeight()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private adaptNotch()V
    .locals 4

    .line 720
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_5

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    .line 741
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 742
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdjustArrowPosition:Z

    goto :goto_0

    .line 732
    :cond_1
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    if-ne v0, v2, :cond_2

    .line 733
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getNotchHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 734
    iput-boolean v2, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdjustArrowPosition:Z

    goto :goto_0

    :cond_2
    if-nez v0, :cond_5

    .line 736
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 737
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdjustArrowPosition:Z

    goto :goto_0

    .line 723
    :cond_3
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    if-nez v0, :cond_4

    .line 724
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getNotchHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 725
    iput-boolean v2, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdjustArrowPosition:Z

    goto :goto_0

    :cond_4
    if-ne v0, v2, :cond_5

    .line 727
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 728
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdjustArrowPosition:Z

    :cond_5
    :goto_0
    return-void
.end method

.method private adaptNotchHidden()V
    .locals 1

    .line 1298
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdaptRotation:Z

    if-eqz v0, :cond_0

    .line 1299
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->rotateGesture()V

    :cond_0
    const/4 v0, 0x0

    .line 1301
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdaptRotation:Z

    return-void
.end method

.method private adaptPNotchScreen(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    .line 895
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    :try_start_0
    const-string p0, "android.view.WindowManager$LayoutParams"

    .line 897
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "layoutInDisplayCutoutMode"

    .line 898
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    .line 899
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 900
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "GestureStubView"

    const-string v0, "adaptPNotchScreen"

    .line 902
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private adaptRotation(Z)V
    .locals 2

    .line 1287
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 1288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adaptRotation   currentRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureStubView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    if-eq p1, v0, :cond_0

    .line 1291
    iput p1, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    .line 1292
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->initNotchRect()V

    .line 1293
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->rotateGesture()V

    :cond_0
    return-void
.end method

.method private calcBackArrowParamsAtNotchSide(F)[I
    .locals 7

    .line 455
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    .line 467
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 468
    sget-object v0, Lcom/miui/home/recents/GestureStubView$EventPosition;->UPON_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    goto :goto_0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 470
    sget-object v0, Lcom/miui/home/recents/GestureStubView$EventPosition;->BELOW_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    goto :goto_0

    .line 472
    :cond_1
    sget-object v0, Lcom/miui/home/recents/GestureStubView$EventPosition;->ALIGN_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    goto :goto_0

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 459
    sget-object v0, Lcom/miui/home/recents/GestureStubView$EventPosition;->UPON_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    goto :goto_0

    .line 460
    :cond_3
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    .line 461
    sget-object v0, Lcom/miui/home/recents/GestureStubView$EventPosition;->BELOW_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    goto :goto_0

    .line 463
    :cond_4
    sget-object v0, Lcom/miui/home/recents/GestureStubView$EventPosition;->ALIGN_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    :goto_0
    new-array v3, v1, [I

    .line 478
    sget-object v4, Lcom/miui/home/recents/GestureStubView$4;->$SwitchMap$com$miui$home$recents$GestureStubView$EventPosition:[I

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView$EventPosition;->ordinal()I

    move-result v0

    aget v0, v4, v0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eq v0, v2, :cond_8

    if-eq v0, v6, :cond_8

    if-eq v0, v1, :cond_5

    goto :goto_2

    .line 486
    :cond_5
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    aput p1, v3, v5

    .line 487
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->adaptAlignNotchArrowXStart()I

    move-result p1

    aput p1, v3, v2

    .line 488
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getNotchWidth()I

    move-result p1

    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x4

    if-lt p1, v0, :cond_7

    iget-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mHideNotch:Z

    if-eqz p1, :cond_6

    goto :goto_1

    .line 491
    :cond_6
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mDensity:F

    const/high16 v0, 0x42580000    # 54.0f

    mul-float v1, p0, v0

    sub-float/2addr p1, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p1, v1

    mul-float/2addr p0, v0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    aput p0, v3, v6

    goto :goto_2

    :cond_7
    :goto_1
    aput v4, v3, v6

    goto :goto_2

    :cond_8
    float-to-int p1, p1

    aput p1, v3, v5

    .line 482
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->adaptBesideNotchArrowXStart()I

    move-result p0

    aput p0, v3, v2

    aput v4, v3, v6

    :goto_2
    return-object v3
.end method

.method private clearMessages()V
    .locals 2

    .line 1064
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStubView$H;->removeMessages(I)V

    .line 1065
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/GestureStubView$H;->removeMessages(I)V

    return-void
.end method

.method private getAnimatingLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 908
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7eb

    const/16 v4, 0x128

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    .line 916
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v0}, Lcom/miui/home/recents/GestureStubView;->adaptPNotchScreen(Landroid/view/WindowManager$LayoutParams;)V

    .line 917
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    return-object p0
.end method

.method private getGestureStubWindowParam()Landroid/view/WindowManager$LayoutParams;
    .locals 11

    const/4 v0, 0x0

    .line 839
    invoke-direct {p0, v0}, Lcom/miui/home/recents/GestureStubView;->adaptRotation(Z)V

    .line 840
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 841
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    const/4 v4, -0x1

    :goto_0
    move v7, v1

    move v6, v4

    goto :goto_3

    .line 844
    :cond_0
    iget v4, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 845
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    const v5, 0x3f19999a    # 0.6f

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    goto :goto_2

    .line 849
    :cond_1
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    :goto_1
    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    goto :goto_0

    .line 846
    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mIsInMultiWindowMode:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mIsInMinimizedMultiWindowMode:Z

    if-nez v1, :cond_3

    move v5, v2

    .line 847
    :cond_3
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenHeight:I

    goto :goto_1

    .line 852
    :goto_3
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_4

    .line 853
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v8, 0x7eb

    const/16 v9, 0x128

    const/4 v10, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    .line 861
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v1}, Lcom/miui/home/recents/GestureStubView;->adaptPNotchScreen(Landroid/view/WindowManager$LayoutParams;)V

    .line 862
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/GestureStubView;->setBackgroundColor(I)V

    .line 863
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    goto :goto_4

    .line 865
    :cond_4
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 866
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 869
    :goto_4
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    const/16 v2, 0x50

    if-ne v1, v3, :cond_5

    .line 870
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "GestureStubBottom"

    .line 871
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 872
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0

    :cond_5
    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_7

    const/4 v1, 0x3

    goto :goto_5

    :cond_7
    const/4 v1, 0x5

    .line 879
    :goto_5
    iget v4, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    if-eqz v4, :cond_9

    if-ne v4, v3, :cond_8

    goto :goto_6

    :cond_8
    const/16 v2, 0x10

    .line 885
    iget-object v3, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    goto :goto_7

    :cond_9
    :goto_6
    const/high16 v3, 0x41c80000    # 25.0f

    .line 881
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v3

    iget v3, p0, Lcom/miui/home/recents/GestureStubView;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 882
    iget-object v3, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 888
    :goto_7
    iget-object v3, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    or-int/2addr v1, v2

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz v0, :cond_a

    const-string v0, "GestureStubLeft"

    goto :goto_8

    :cond_a
    const-string v0, "GestureStubRight"

    .line 889
    :goto_8
    invoke-virtual {v3, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 891
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method public static getNextTask(Landroid/content/Context;ZI)Lcom/android/systemui/shared/recents/model/Task;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private getNotchHeight()I
    .locals 2

    .line 423
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_CAMERA_IN_CORNER:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 428
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 433
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0

    .line 431
    :cond_1
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method private getNotchWidth()I
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 411
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 416
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0

    .line 414
    :cond_0
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private hideGestureStub()V
    .locals 2

    const/4 v0, 0x1

    .line 559
    invoke-direct {p0, v0}, Lcom/miui/home/recents/GestureStubView;->setKeepHidden(Z)V

    .line 560
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 561
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    const/4 v1, 0x0

    .line 562
    iput-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 564
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/GestureStubView;->disableTouch(Z)V

    .line 565
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

    if-eqz p0, :cond_1

    .line 566
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureBackArrowView;->reset()V

    :cond_1
    const-string p0, "GestureStubView"

    const-string v0, "hideGestureStub"

    .line 570
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initGestureEdgeSize()[I
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 664
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 665
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getNotchHeight()I

    move-result v1

    iget v4, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    add-int/2addr v1, v4

    aput v1, v0, v2

    .line 666
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    sub-int/2addr p0, v4

    aput p0, v0, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 668
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    aput v1, v0, v2

    .line 669
    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    sub-int/2addr v2, v1

    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getNotchHeight()I

    move-result p0

    sub-int/2addr v2, p0

    aput v2, v0, v3

    goto :goto_0

    .line 671
    :cond_1
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    aput v1, v0, v2

    .line 672
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    sub-int/2addr p0, v1

    aput p0, v0, v3

    :goto_0
    return-object v0
.end method

.method private initGestureStubSize()V
    .locals 5

    .line 656
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->initScreenSizeAndDensity()V

    .line 657
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->initGestureEdgeSize()[I

    move-result-object v0

    .line 658
    new-instance v1, Lcom/miui/home/recents/GesturesBackController;

    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-direct {v1, v2, v3, v0}, Lcom/miui/home/recents/GesturesBackController;-><init>(Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;II)V

    iput-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    return-void
.end method

.method private initNotchRect()V
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 390
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 401
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 398
    :cond_0
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 395
    :cond_1
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 392
    :cond_2
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    .line 405
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNotchRect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GestureStubView"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initScreenSizeAndDensity()V
    .locals 4

    .line 678
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 679
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mDisplay:Landroid/view/Display;

    .line 680
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 682
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_0

    .line 683
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    .line 684
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenHeight:I

    goto :goto_0

    .line 686
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    .line 687
    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenHeight:I

    .line 690
    :goto_0
    sget-boolean v0, Lcom/miui/home/launcher/DeviceConfig;->IS_FOLD_DEVICE_WITH_SHELL:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x46

    .line 691
    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    goto :goto_1

    .line 692
    :cond_1
    sget-object v0, Lcom/miui/home/recents/GestureStubView;->SPECIAL_GESTURE_STUB_SIZE_DEVICES:Ljava/util/ArrayList;

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getMd5([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x5a0

    if-eqz v0, :cond_3

    .line 693
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    if-eq v0, v1, :cond_2

    const/16 v0, 0x3e

    .line 698
    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    goto :goto_1

    :cond_2
    const/16 v0, 0x52

    .line 695
    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    goto :goto_1

    .line 701
    :cond_3
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    const/16 v2, 0x2d0

    if-eq v0, v2, :cond_6

    const/16 v2, 0x438

    const/16 v3, 0x36

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_4

    .line 712
    iput v3, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    iput v3, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    goto :goto_1

    :cond_4
    const/16 v0, 0x48

    .line 703
    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    goto :goto_1

    .line 706
    :cond_5
    iput v3, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    iput v3, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    goto :goto_1

    :cond_6
    const/16 v0, 0x28

    .line 709
    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    .line 716
    :goto_1
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mDensity:F

    return-void
.end method

.method private injectKeyEvent(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1115
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/GestureStubView;->injectKeyEvent(IZ)V

    return-void
.end method

.method private injectKeyEvent(IZ)V
    .locals 19

    move-object/from16 v0, p0

    .line 1120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injectKeyEvent keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "GestureStubView"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 1124
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->isSupportEffectGestureBackLinear()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1125
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performGestureBackHandUp()V

    .line 1126
    iget-object v3, v0, Lcom/miui/home/recents/GestureStubView;->mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

    invoke-virtual {v3, v1}, Lcom/miui/home/recents/GestureBackArrowView;->setArrowFeedBackDone(Z)V

    goto :goto_0

    .line 1128
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performInjectKeyEvent(Landroid/view/View;)V

    .line 1132
    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/miui/home/recents/OnBackInvokedCallbackInterface;->getBackNavigationInfo()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 1155
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/GestureStubView;->onBackInvoke()V

    goto/16 :goto_2

    .line 1133
    :cond_3
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 1134
    new-instance v15, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x8

    const/16 v18, 0x101

    move-object v3, v15

    move-wide/from16 v4, v16

    move-wide/from16 v6, v16

    move/from16 v9, p1

    move-object v1, v15

    move/from16 v15, v18

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 1137
    new-instance v15, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    move-object v3, v15

    move-object v2, v15

    move/from16 v15, v18

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 1140
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/GestureStubView;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/shared/recents/system/InputEventCompat;->setDisplayId(Landroid/view/InputEvent;I)V

    .line 1141
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/GestureStubView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-static {v2, v0}, Lcom/android/systemui/shared/recents/system/InputEventCompat;->setDisplayId(Landroid/view/InputEvent;I)V

    :try_start_0
    const-string v0, "android.hardware.input.InputManager"

    .line 1143
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getInstance"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    .line 1144
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    .line 1145
    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1148
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v5, "injectInputEvent"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Landroid/view/InputEvent;

    aput-object v8, v7, v4

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v4

    .line 1149
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v9

    invoke-virtual {v3, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v2, v1, v4

    .line 1150
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v9

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1152
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private injectMotionEvent(I)V
    .locals 0

    return-void
.end method

.method private isFocusWindowAdaptNotch()Z
    .locals 4

    .line 503
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "getViewRootImpl"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 504
    invoke-virtual {p0, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 505
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "isFocusWindowAdaptNotch"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {p0, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    .line 506
    invoke-virtual {p0, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "GestureStubView"

    const-string v1, "adaptBesideNotchArrowXStart"

    .line 508
    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method private isInSpeedLimit(I)Z
    .locals 3

    .line 310
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 311
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX1:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float p1, p1

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX2:F

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isSwipeRightInDirection()Z
    .locals 3

    .line 326
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX1:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX1:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 328
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mSwipeInRightDirection:Z

    goto :goto_0

    .line 330
    :cond_2
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mSwipeInRightDirection:Z

    .line 332
    :goto_0
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureStubView;->mSwipeInRightDirection:Z

    return p0
.end method

.method private static isUserSetUp(Landroid/content/ContentResolver;)Z
    .locals 2

    .line 344
    sget-boolean v0, Lcom/miui/home/recents/GestureStubView;->isUserSetUp:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "device_provisioned"

    .line 345
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "user_setup_complete"

    .line 346
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/miui/home/recents/GestureStubView;->isUserSetUp:Z

    .line 348
    :cond_1
    sget-boolean p0, Lcom/miui/home/recents/GestureStubView;->isUserSetUp:Z

    return p0
.end method

.method private renderView()V
    .locals 2

    .line 807
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    if-eqz v0, :cond_0

    return-void

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    .line 811
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getAnimatingLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 810
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "GestureStubView"

    const-string v1, "renderView"

    .line 813
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 815
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mNeedRender:Z

    .line 816
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->tryRequestTransparentRegionForParent()V

    return-void
.end method

.method private resetRenderProperty(Ljava/lang/String;)V
    .locals 6

    .line 784
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    if-eqz v0, :cond_0

    return-void

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 788
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 789
    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 790
    iget-object v3, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 791
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getGestureStubWindowParam()Landroid/view/WindowManager$LayoutParams;

    .line 792
    iget-object v4, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v5, 0x0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-ne v2, v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "showGestureStub"

    .line 794
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_4

    .line 795
    :cond_3
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, p0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 799
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetRenderProperty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "   isLayoutParamChanged="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GestureStubView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    iput-boolean v5, p0, Lcom/miui/home/recents/GestureStubView;->mNeedRender:Z

    .line 803
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->tryRequestTransparentRegionForParent()V

    return-void
.end method

.method private rotateGesture()V
    .locals 2

    .line 1305
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    invoke-direct {p0, v0}, Lcom/miui/home/recents/GestureStubView;->setSize(I)V

    const-string v0, "GestureStubView_Touch"

    const-string v1, "rotateGesture---requestApplyInsets"

    .line 1306
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->requestApplyInsets()V

    return-void
.end method

.method private setKeepHidden(Z)V
    .locals 2

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setKeepHidden    old="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureStubView_Touch"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    if-eq v0, p1, :cond_0

    .line 599
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    .line 600
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->updateTouchable()V

    :cond_0
    return-void
.end method

.method private setSize(I)V
    .locals 3

    .line 748
    iput p1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    iput p1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 749
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->adaptNotch()V

    .line 750
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    if-eqz p1, :cond_0

    .line 751
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->initGestureEdgeSize()[I

    move-result-object p1

    .line 752
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/recents/GesturesBackController;->setGestureEdgeWidth(II)V

    .line 756
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "setSize"

    .line 757
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->resetRenderProperty(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 760
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method static supportNextTask(Landroid/app/KeyguardManager;Landroid/content/ContentResolver;)Z
    .locals 0

    .line 340
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->isUserSetUp(Landroid/content/ContentResolver;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private tryRequestTransparentRegionForParent()V
    .locals 1

    .line 823
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 827
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 831
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    return-void
.end method

.method private updateAssistXPosition()V
    .locals 4

    .line 317
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX1:F

    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    sub-float v2, v1, v0

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX1:F

    .line 318
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX2:F

    sub-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX2:F

    return-void
.end method

.method private updateTouchable()V
    .locals 3

    .line 606
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisableTouch:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisableTouchBySwipeStatusBar:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 607
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTouchable    old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/miui/home/recents/GestureStubView;->mUseEmptyTouchableRegion:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "   new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GestureStubView_Touch"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mUseEmptyTouchableRegion:Z

    if-eq v1, v0, :cond_2

    .line 610
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mUseEmptyTouchableRegion:Z

    .line 611
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "  updateTouchable---requestApplyInsets"

    .line 612
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->requestApplyInsets()V

    :cond_2
    return-void
.end method


# virtual methods
.method public adaptAndRender()V
    .locals 1

    .line 1059
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->adaptNotch()V

    const-string v0, "adaptAndRender"

    .line 1060
    invoke-direct {p0, v0}, Lcom/miui/home/recents/GestureStubView;->resetRenderProperty(Ljava/lang/String;)V

    return-void
.end method

.method public clearGestureStub()V
    .locals 1

    .line 647
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->hideGestureStub()V

    .line 648
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const-string p0, "GestureStubView"

    const-string v0, "clearGestureStub"

    .line 651
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableQuickSwitch(Z)V
    .locals 0

    .line 1041
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mDisableQuickSwitch:Z

    return-void
.end method

.method public disableTouch(Z)V
    .locals 2

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableTouch    old="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mDisableTouch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureStubView_Touch"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisableTouch:Z

    if-eq v0, p1, :cond_0

    .line 579
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mDisableTouch:Z

    .line 580
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->updateTouchable()V

    :cond_0
    return-void
.end method

.method public disableTouchBySwipeStatusBar(Z)V
    .locals 2

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableTouchBySwipeStatusBar    old="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mDisableTouchBySwipeStatusBar:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureStubView_Touch"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisableTouchBySwipeStatusBar:Z

    if-eq v0, p1, :cond_0

    .line 589
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mDisableTouchBySwipeStatusBar:Z

    .line 590
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->updateTouchable()V

    :cond_0
    return-void
.end method

.method public enableGestureBackAnimation(Z)V
    .locals 1

    .line 1033
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureAnimationEnabled:Z

    .line 1034
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GesturesBackController;->enableGestureBackAnimation(Z)V

    .line 1036
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableGestureBackAnimation enable:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GestureStubView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9

    .line 766
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mNeedRender:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 767
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->getWidth()I

    move-result v0

    .line 768
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->getHeight()I

    move-result v1

    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gatherTransparentRegion: need render w:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  h:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GestureStubView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_0

    if-lez v1, :cond_0

    .line 773
    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mLocation:[I

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/GestureStubView;->getLocationInWindow([I)V

    .line 774
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mLocation:[I

    const/4 v2, 0x0

    aget v4, p0, v2

    const/4 v3, 0x1

    .line 775
    aget v5, p0, v3

    add-int v6, v4, v0

    add-int v7, v5, v1

    .line 776
    sget-object v8, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return v2

    .line 780
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p0

    return p0
.end method

.method public hideGestureStubDelay()V
    .locals 4

    .line 554
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStubView$H;->removeMessages(I)V

    .line 555
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/home/recents/GestureStubView$H;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public isDisableQuickSwitch()Z
    .locals 0

    .line 1045
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureStubView;->mDisableQuickSwitch:Z

    if-nez p0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDisableOldQuickSwitch()Z

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
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 441
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 442
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->tryRequestTransparentRegionForParent()V

    .line 443
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mSettingsObserver:Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->register()V

    .line 444
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mDisplayListener:Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    const-string v0, "GestureStubView_Touch"

    const-string v1, "onAttachedToWindow---requestApplyInsets"

    .line 445
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "force_black_v2"

    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "force_black"

    .line 447
    invoke-static {v0, v1}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getGlobalBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mHideNotch:Z

    .line 448
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mOnComputeInternalInsetsListener:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    invoke-static {v0, v1}, Lcom/android/systemui/shared/recents/touchableRegion/TouchableRegionCompat;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;)V

    .line 449
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->requestApplyInsets()V

    return-void
.end method

.method public onBackCancelled()V
    .locals 2

    .line 1378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackCancelled: mBackInvokeCallbackStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mOnBackInvokedCallbackImpl= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureStubView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    if-eqz v0, :cond_0

    .line 1380
    invoke-interface {v0}, Lcom/miui/home/recents/OnBackInvokedCallbackInterface;->onBackCancelled()V

    :cond_0
    const/4 v0, 0x0

    .line 1382
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    return-void
.end method

.method public onBackInvoke()V
    .locals 2

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackInvoke: mBackInvokeCallbackStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  mOnBackInvokedCallbackImpl= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureStubView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    if-eqz v0, :cond_0

    .line 1388
    invoke-interface {v0}, Lcom/miui/home/recents/OnBackInvokedCallbackInterface;->onBackInvoke()V

    :cond_0
    const/4 v0, 0x0

    .line 1390
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    return-void
.end method

.method public onBackProgressed(FFFFFILjava/lang/Object;)V
    .locals 10

    move-object v0, p0

    .line 1372
    iget-boolean v1, v0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    if-eqz v1, :cond_0

    iget-object v2, v0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    if-eqz v2, :cond_0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 1373
    invoke-interface/range {v2 .. v9}, Lcom/miui/home/recents/OnBackInvokedCallbackInterface;->onBackProgressed(FFFFFILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onBackStart(FFFFFILjava/lang/Object;)V
    .locals 10

    move-object v0, p0

    .line 1364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackStart: mBackInvokeCallbackStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  mOnBackInvokedCallbackImpl= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GestureStubView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1365
    iget-boolean v1, v0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    if-nez v1, :cond_0

    iget-object v2, v0, Lcom/miui/home/recents/GestureStubView;->mOnBackInvokedCallbackImpl:Lcom/miui/home/recents/OnBackInvokedCallbackInterface;

    if-eqz v2, :cond_0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    .line 1366
    invoke-interface/range {v2 .. v9}, Lcom/miui/home/recents/OnBackInvokedCallbackInterface;->onBackStart(FFFFFILjava/lang/Object;)V

    :cond_0
    const/4 v1, 0x1

    .line 1368
    iput-boolean v1, v0, Lcom/miui/home/recents/GestureStubView;->mBackInvokeCallbackStarted:Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 622
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 624
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged   changes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GestureStubView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v0, p1, 0x400

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit16 v3, p1, 0x800

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    and-int/lit16 p1, p1, 0x1000

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_2
    if-nez p1, :cond_3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 631
    :cond_3
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->initScreenSizeAndDensity()V

    .line 632
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

    if-eqz p1, :cond_4

    .line 633
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStubView;->removeView(Landroid/view/View;)V

    .line 635
    :cond_4
    iget p1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStubView;->setGestureStubPosition(I)V

    .line 636
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    if-eqz p1, :cond_5

    .line 637
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->initGestureEdgeSize()[I

    move-result-object p1

    .line 638
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    aget v3, p1, v2

    aget p1, p1, v1

    invoke-virtual {v0, v3, p1}, Lcom/miui/home/recents/GesturesBackController;->setGestureEdgeWidth(II)V

    .line 642
    :cond_5
    invoke-direct {p0, v2}, Lcom/miui/home/recents/GestureStubView;->adaptRotation(Z)V

    .line 643
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->adaptNotchHidden()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 531
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 532
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mSettingsObserver:Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->unregister()V

    .line 533
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mDisplayListener:Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 534
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mOnComputeInternalInsetsListener:Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;

    invoke-static {v0, p0}, Lcom/android/systemui/shared/recents/touchableRegion/TouchableRegionCompat;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver;Lcom/android/systemui/shared/recents/touchableRegion/OnComputeInternalInsetsListenerCompat;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 923
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    return v8

    .line 926
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrAction:I

    .line 928
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrAction:I

    const-wide/16 v1, 0x96

    const/4 v9, 0x2

    const-string v3, "GestureStubView"

    const/4 v10, 0x1

    if-eqz v0, :cond_a

    const/16 v4, 0xff

    if-eq v0, v10, :cond_6

    if-eq v0, v9, :cond_1

    const/4 v5, 0x3

    if-eq v0, v5, :cond_6

    goto/16 :goto_2

    .line 951
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    .line 952
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrY:F

    .line 954
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrY:F

    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mDownY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    iget v5, p0, Lcom/miui/home/recents/GestureStubView;->mDownX:F

    sub-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    if-nez v0, :cond_2

    .line 957
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    invoke-virtual {v0, v4}, Lcom/miui/home/recents/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStubView$H;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "up-slide detected, sendMessage MSG_SET_GESTURE_STUB_UNTOUCHABLE"

    .line 960
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_2
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mIsFirstMove:Z

    if-eqz v0, :cond_4

    .line 965
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mCurrY:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    if-nez v0, :cond_3

    move v6, v8

    goto :goto_0

    :cond_3
    move v6, v10

    :goto_0
    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/recents/GestureStubView;->onBackStart(FFFFFILjava/lang/Object;)V

    .line 966
    iput-boolean v8, p0, Lcom/miui/home/recents/GestureStubView;->mIsFirstMove:Z

    .line 969
    :cond_4
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mCurrY:F

    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mDownX:F

    sub-float v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x43340000    # 180.0f

    div-float/2addr v0, v3

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    if-nez v0, :cond_5

    move v6, v8

    goto :goto_1

    :cond_5
    move v6, v10

    :goto_1
    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/miui/home/recents/GestureStubView;->onBackProgressed(FFFFFILjava/lang/Object;)V

    goto/16 :goto_2

    .line 974
    :cond_6
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_7

    .line 976
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->onBackCancelled()V

    return v10

    .line 980
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    .line 981
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, p0, Lcom/miui/home/recents/GestureStubView;->mCurrY:F

    .line 982
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    .line 985
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v11

    sub-long/2addr v5, v11

    cmp-long v1, v5, v1

    if-gez v1, :cond_8

    iget-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    if-nez v1, :cond_8

    .line 987
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->clearMessages()V

    .line 989
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v1, v2

    .line 990
    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mCurrY:F

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    sub-float/2addr v2, v0

    .line 992
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    if-nez v0, :cond_8

    .line 993
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v5, 0x41f00000    # 30.0f

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_8

    .line 994
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_8

    .line 995
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    invoke-virtual {v0, v4}, Lcom/miui/home/recents/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/miui/home/recents/GestureStubView$H;->sendMessage(Landroid/os/Message;)Z

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currTime - mDownTime < MSG_CHECK_GESTURE_STUB_TOUCHABLE_TIMEOUT updateViewLayout UnTouchable, diffX:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " diffY:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION_UP: mIsGestureStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsGestureAnimationEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureAnimationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureAnimationEnabled:Z

    if-eqz v0, :cond_9

    .line 1013
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/recents/GestureStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1017
    :cond_9
    iput-boolean v8, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    goto :goto_2

    .line 930
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX2:F

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX1:F

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mDownX:F

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    .line 931
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mDownY:F

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrY:F

    .line 932
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_b

    .line 933
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 935
    :cond_b
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 938
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    const/16 v4, 0x100

    invoke-virtual {v0, v4}, Lcom/miui/home/recents/GestureStubView$H;->removeMessages(I)V

    .line 939
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    .line 940
    invoke-virtual {v0, v4}, Lcom/miui/home/recents/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 939
    invoke-virtual {v0, v4, v1, v2}, Lcom/miui/home/recents/GestureStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v0, "onTouch ACTION_DOWN sendMessageDelayed MSG_CHECK_GESTURE_STUB_TOUCHABLE"

    .line 944
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    iput-boolean v10, p0, Lcom/miui/home/recents/GestureStubView;->mIsFirstMove:Z

    .line 1023
    :goto_2
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    if-eqz v0, :cond_c

    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    if-eq v1, v9, :cond_c

    iget-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mPendingResetStatus:Z

    if-nez v1, :cond_c

    .line 1025
    invoke-virtual {v0, p1, p0}, Lcom/miui/home/recents/GesturesBackController;->onPointerEvent(Landroid/view/MotionEvent;Lcom/miui/home/recents/GestureStubView;)V

    return v10

    :cond_c
    return v8
.end method

.method public setGestureStubPosition(I)V
    .locals 2

    .line 1049
    iput p1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    .line 1050
    new-instance p1, Lcom/miui/home/recents/GestureBackArrowView;

    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    invoke-direct {p1, v0, v1}, Lcom/miui/home/recents/GestureBackArrowView;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

    .line 1051
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStubView;->addView(Landroid/view/View;)V

    .line 1053
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 1054
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisplay:Landroid/view/Display;

    .line 1055
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1316
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public showGestureStub()V
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStubView$H;->removeMessages(I)V

    .line 540
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 544
    invoke-direct {p0, v0}, Lcom/miui/home/recents/GestureStubView;->setKeepHidden(Z)V

    const-string v1, "showGestureStub"

    .line 545
    invoke-direct {p0, v1}, Lcom/miui/home/recents/GestureStubView;->resetRenderProperty(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/GestureStubView;->disableTouch(Z)V

    const-string p0, "GestureStubView"

    .line 549
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
