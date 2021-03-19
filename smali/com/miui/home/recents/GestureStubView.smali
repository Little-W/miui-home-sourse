.class public Lcom/miui/home/recents/GestureStubView;
.super Landroid/widget/FrameLayout;
.source "GestureStubView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;,
        Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;,
        Lcom/miui/home/recents/GestureStubView$H;,
        Lcom/miui/home/recents/GestureStubView$EventPosition;
    }
.end annotation


# static fields
.field private static isUserSetUp:Z


# instance fields
.field private mAnimating:Z

.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAssistX1:F

.field private mAssistX2:F

.field private mBesideNotchArrowXStart:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrAction:I

.field private mCurrX:F

.field private mCurrY:F

.field private mDensity:F

.field private mDisableQuickSwitch:Z

.field private mDisableTouch:Z

.field private mDisplay:Landroid/view/Display;

.field private mDisplayListener:Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private mDownX:F

.field private mDownY:F

.field private mEarWidth:I

.field private mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

.field private mGestureStubDefaultSize:I

.field private mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

.field private mGestureStubPos:I

.field private mGestureStubSize:I

.field private mGesturesBackCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

.field private mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

.field private mHandler:Lcom/miui/home/recents/GestureStubView$H;

.field private mHideNotch:Z

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

.field private mNotchHeight:I

.field private mNotchWidth:I

.field private mPendingResetStatus:Z

.field private mRotation:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSettingsObserver:Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;

.field private mSwipeInRightDirection:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    .line 294
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/GestureStubView;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .line 298
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 106
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mLocation:[I

    const/4 v1, -0x1

    .line 108
    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mCurrAction:I

    .line 109
    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    .line 110
    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenHeight:I

    .line 111
    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    .line 112
    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 113
    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    .line 115
    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mNotchHeight:I

    .line 116
    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mNotchWidth:I

    .line 117
    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mEarWidth:I

    const/4 v1, 0x0

    .line 124
    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 125
    iput v2, p0, Lcom/miui/home/recents/GestureStubView;->mDensity:F

    .line 126
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdjustArrowPosition:Z

    .line 127
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mDisableQuickSwitch:Z

    .line 145
    new-instance v2, Lcom/miui/home/recents/GestureStubView$1;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/GestureStubView$1;-><init>(Lcom/miui/home/recents/GestureStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 170
    new-instance v2, Lcom/miui/home/recents/GestureStubView$2;

    invoke-direct {v2, p0}, Lcom/miui/home/recents/GestureStubView$2;-><init>(Lcom/miui/home/recents/GestureStubView;)V

    iput-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    .line 456
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 300
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mContext:Landroid/content/Context;

    .line 302
    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 304
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    .line 305
    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    .line 307
    new-instance v0, Lcom/miui/home/recents/GestureStubView$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/GestureStubView$H;-><init>(Lcom/miui/home/recents/GestureStubView;Lcom/miui/home/recents/GestureStubView$1;)V

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    const-string v0, "window"

    .line 308
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    .line 310
    invoke-direct {p0, p2}, Lcom/miui/home/recents/GestureStubView;->initGestureStubSize(I)V

    .line 311
    iget-object p2, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getGestureStubWindowParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    new-instance p2, Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;

    invoke-direct {p2, p0, v1}, Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;-><init>(Lcom/miui/home/recents/GestureStubView;Lcom/miui/home/recents/GestureStubView$1;)V

    iput-object p2, p0, Lcom/miui/home/recents/GestureStubView;->mDisplayListener:Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;

    const-string p2, "display"

    .line 313
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    iput-object p2, p0, Lcom/miui/home/recents/GestureStubView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string p2, "keyguard"

    .line 314
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/KeyguardManager;

    iput-object p2, p0, Lcom/miui/home/recents/GestureStubView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 315
    new-instance p2, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;

    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    invoke-direct {p2, p0, v0}, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;-><init>(Lcom/miui/home/recents/GestureStubView;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/miui/home/recents/GestureStubView;->mSettingsObserver:Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;

    .line 316
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    .line 317
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/miui/home/recents/GestureStubView;->isUserSetUp(Landroid/content/ContentResolver;)Z

    move-result p1

    sput-boolean p1, Lcom/miui/home/recents/GestureStubView;->isUserSetUp:Z

    .line 319
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mContext:Landroid/content/Context;

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mVibrator:Landroid/os/Vibrator;

    const/16 p1, 0x8

    .line 320
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStubView;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/recents/GestureStubView;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureStubView$H;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/home/recents/GestureStubView;)Z
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->isSwipeRightInDirection()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/miui/home/recents/GestureStubView;IZ)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/GestureStubView;->injectKeyEvent(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/home/recents/GestureStubView;)Landroid/app/KeyguardManager;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/home/recents/GestureStubView;)Landroid/content/ContentResolver;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/miui/home/recents/GestureStubView;Landroid/content/ContentResolver;)Landroid/content/ContentResolver;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mContentResolver:Landroid/content/ContentResolver;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/miui/home/recents/GestureStubView;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/home/recents/GestureStubView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    return p0
.end method

.method static synthetic access$1600(Lcom/miui/home/recents/GestureStubView;)Landroid/os/Vibrator;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mVibrator:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/miui/home/recents/GestureStubView;)Landroid/animation/Animator$AnimatorListener;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/miui/home/recents/GestureStubView;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->injectKeyEvent(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GestureBackArrowView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/miui/home/recents/GestureStubView;)Landroid/view/MotionEvent;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/miui/home/recents/GestureStubView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/miui/home/recents/GestureStubView;)F
    .locals 0

    .line 49
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    return p0
.end method

.method static synthetic access$2300(Lcom/miui/home/recents/GestureStubView;)F
    .locals 0

    .line 49
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrY:F

    return p0
.end method

.method static synthetic access$2400(Lcom/miui/home/recents/GestureStubView;)Lcom/miui/home/recents/GesturesBackController;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/miui/home/recents/GestureStubView;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mPendingResetStatus:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/miui/home/recents/GestureStubView;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->hideGestureStub()V

    return-void
.end method

.method static synthetic access$2800(Lcom/miui/home/recents/GestureStubView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrAction:I

    return p0
.end method

.method static synthetic access$2900(Lcom/miui/home/recents/GestureStubView;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->injectMotionEvent(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/recents/GestureStubView;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->resetRenderProperty(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->updateAssistXPosition()V

    return-void
.end method

.method static synthetic access$3100(Lcom/miui/home/recents/GestureStubView;)F
    .locals 0

    .line 49
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mDownX:F

    return p0
.end method

.method static synthetic access$3200(Lcom/miui/home/recents/GestureStubView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    return p0
.end method

.method static synthetic access$3300(Lcom/miui/home/recents/GestureStubView;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->adaptRotation(Z)V

    return-void
.end method

.method static synthetic access$3402(Lcom/miui/home/recents/GestureStubView;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mHideNotch:Z

    return p1
.end method

.method static synthetic access$3502(Lcom/miui/home/recents/GestureStubView;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdaptRotation:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/miui/home/recents/GestureStubView;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    return p0
.end method

.method static synthetic access$400(Lcom/miui/home/recents/GestureStubView;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    return p0
.end method

.method static synthetic access$402(Lcom/miui/home/recents/GestureStubView;Z)Z
    .locals 0

    .line 49
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->clearMessages()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/recents/GestureStubView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->renderView()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/home/recents/GestureStubView;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdjustArrowPosition:Z

    return p0
.end method

.method static synthetic access$800(Lcom/miui/home/recents/GestureStubView;F)[I
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->getParams(F)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/home/recents/GestureStubView;I)Z
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->isInSpeedLimit(I)Z

    move-result p0

    return p0
.end method

.method private adaptAlignNotchArrowXStart()I
    .locals 2

    .line 384
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchHeight:I

    add-int/lit8 v0, v0, -0x1

    .line 385
    iget-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mHideNotch:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private adaptBesideNotchArrowXStart()I
    .locals 6

    .line 365
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mBesideNotchArrowXStart:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 369
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getViewRootImpl"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 370
    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 371
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isFocusWindowAdaptNotch"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 372
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private adaptNotch()V
    .locals 5

    .line 554
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNotch()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchHeight:I

    if-lez v0, :cond_6

    .line 555
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/high16 v1, 0x43240000    # 164.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    .line 581
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 582
    iput-boolean v2, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdjustArrowPosition:Z

    .line 583
    iput v2, p0, Lcom/miui/home/recents/GestureStubView;->mBesideNotchArrowXStart:I

    goto :goto_2

    .line 569
    :cond_0
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    if-ne v0, v3, :cond_1

    .line 570
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mNotchHeight:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 571
    iput-boolean v3, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdjustArrowPosition:Z

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 573
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 574
    iput-boolean v2, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdjustArrowPosition:Z

    .line 576
    :cond_2
    :goto_0
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mDensity:F

    mul-float/2addr v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    .line 577
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchHeight:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mBesideNotchArrowXStart:I

    goto :goto_2

    .line 557
    :cond_3
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    if-nez v0, :cond_4

    .line 558
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mNotchHeight:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 559
    iput-boolean v3, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdjustArrowPosition:Z

    goto :goto_1

    :cond_4
    if-ne v0, v3, :cond_5

    .line 561
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 562
    iput-boolean v2, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdjustArrowPosition:Z

    .line 564
    :cond_5
    :goto_1
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchWidth:I

    int-to-float v0, v0

    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mDensity:F

    mul-float/2addr v2, v1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_6

    .line 565
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchHeight:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mBesideNotchArrowXStart:I

    :cond_6
    :goto_2
    return-void
.end method

.method private adaptNotchHidden()V
    .locals 1

    .line 1111
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdaptRotation:Z

    if-eqz v0, :cond_0

    .line 1112
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->rotateGesture()V

    :cond_0
    const/4 v0, 0x0

    .line 1114
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mNeedAdaptRotation:Z

    return-void
.end method

.method private adaptPNotchScreen(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    .line 717
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    :try_start_0
    const-string v0, "android.view.WindowManager$LayoutParams"

    .line 719
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "layoutInDisplayCutoutMode"

    .line 720
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 721
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 722
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "GestureStubView"

    const-string v1, "adaptPNotchScreen"

    .line 724
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private adaptRotation(Z)V
    .locals 3

    .line 1101
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const-string v0, "GestureStubView"

    .line 1102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adaptRotation   currentRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "   mRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    if-eq p1, v0, :cond_0

    .line 1105
    iput p1, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    .line 1106
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->rotateGesture()V

    :cond_0
    return-void
.end method

.method private clearMessages()V
    .locals 2

    .line 880
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStubView$H;->removeMessages(I)V

    .line 881
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStubView$H;->removeMessages(I)V

    return-void
.end method

.method private getAnimatingLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 730
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7eb

    const/16 v4, 0x128

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 738
    invoke-direct {p0, v6}, Lcom/miui/home/recents/GestureStubView;->adaptPNotchScreen(Landroid/view/WindowManager$LayoutParams;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 739
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->alpha:F

    return-object v6
.end method

.method private getGestureStubWindowParam()Landroid/view/WindowManager$LayoutParams;
    .locals 11

    const/4 v0, 0x0

    .line 661
    invoke-direct {p0, v0}, Lcom/miui/home/recents/GestureStubView;->adaptRotation(Z)V

    .line 662
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 663
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    const/4 v4, -0x1

    move v7, v1

    move v6, v4

    goto :goto_1

    .line 666
    :cond_0
    iget v4, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 667
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    const v5, 0x3f19999a    # 0.6f

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 671
    :cond_1
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    move v7, v1

    move v6, v4

    goto :goto_1

    .line 668
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mIsInMultiWindowMode:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mIsInMinimizedMultiWindowMode:Z

    if-nez v1, :cond_3

    move v5, v2

    .line 669
    :cond_3
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    move v7, v1

    move v6, v4

    .line 674
    :goto_1
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_4

    .line 675
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/16 v8, 0x7eb

    const/16 v9, 0x128

    const/4 v10, 0x1

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    .line 683
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v1}, Lcom/miui/home/recents/GestureStubView;->adaptPNotchScreen(Landroid/view/WindowManager$LayoutParams;)V

    .line 684
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/GestureStubView;->setBackgroundColor(I)V

    .line 685
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    goto :goto_2

    .line 687
    :cond_4
    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 688
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 691
    :goto_2
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    const/16 v2, 0x50

    if-ne v1, v3, :cond_5

    .line 692
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "GestureStubBottom"

    .line 693
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 694
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0

    :cond_5
    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_7

    const/4 v1, 0x3

    goto :goto_3

    :cond_7
    const/4 v1, 0x5

    .line 701
    :goto_3
    iget v4, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    if-eqz v4, :cond_9

    if-ne v4, v3, :cond_8

    goto :goto_4

    :cond_8
    const/16 v2, 0x10

    .line 707
    iget-object v3, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    goto :goto_5

    :cond_9
    :goto_4
    const/high16 v3, 0x41c80000    # 25.0f

    .line 703
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v4, v3

    iget v3, p0, Lcom/miui/home/recents/GestureStubView;->mScreenHeight:I

    int-to-float v3, v3

    div-float/2addr v4, v3

    .line 704
    iget-object v3, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 710
    :goto_5
    iget-object v3, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    or-int/2addr v1, v2

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eqz v0, :cond_a

    const-string v0, "GestureStubLeft"

    goto :goto_6

    :cond_a
    const-string v0, "GestureStubRight"

    .line 711
    :goto_6
    invoke-virtual {v3, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 713
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public static getNextTask(Landroid/content/Context;ZI)Lcom/android/systemui/shared/recents/model/Task;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method private getParams(F)[I
    .locals 9

    .line 333
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mEarWidth:I

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 334
    sget-object p1, Lcom/miui/home/recents/GestureStubView$EventPosition;->UPON_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    goto :goto_0

    .line 335
    :cond_0
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 336
    sget-object p1, Lcom/miui/home/recents/GestureStubView$EventPosition;->BELOW_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    goto :goto_0

    .line 338
    :cond_1
    iget p1, p0, Lcom/miui/home/recents/GestureStubView;->mNotchWidth:I

    int-to-float p1, p1

    const/high16 v0, 0x43240000    # 164.0f

    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mDensity:F

    mul-float/2addr v1, v0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_2

    sget-object p1, Lcom/miui/home/recents/GestureStubView$EventPosition;->ALIGN_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/miui/home/recents/GestureStubView$EventPosition;->UPON_NOTCH:Lcom/miui/home/recents/GestureStubView$EventPosition;

    .line 342
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->adaptBesideNotchArrowXStart()I

    move-result v0

    const/4 v1, 0x3

    .line 343
    new-array v1, v1, [I

    .line 344
    sget-object v2, Lcom/miui/home/recents/GestureStubView$3;->$SwitchMap$com$miui$home$recents$GestureStubView$EventPosition:[I

    invoke-virtual {p1}, Lcom/miui/home/recents/GestureStubView$EventPosition;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/high16 v2, 0x42100000    # 36.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 356
    :pswitch_0
    iget p1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    iget v7, p0, Lcom/miui/home/recents/GestureStubView;->mEarWidth:I

    div-int/lit8 v8, v7, 0x3

    mul-int/2addr v8, v6

    sub-int/2addr p1, v8

    aput p1, v1, v5

    aput v0, v1, v4

    int-to-float p1, v7

    .line 358
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mDensity:F

    mul-float/2addr v0, v2

    add-float/2addr p1, v0

    add-float/2addr p1, v3

    float-to-int p1, p1

    aput p1, v1, v6

    goto :goto_1

    .line 351
    :pswitch_1
    iget p1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    div-int/2addr p1, v6

    aput p1, v1, v5

    .line 352
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->adaptAlignNotchArrowXStart()I

    move-result p1

    aput p1, v1, v4

    .line 353
    iget p1, p0, Lcom/miui/home/recents/GestureStubView;->mNotchWidth:I

    int-to-float p1, p1

    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mDensity:F

    const/high16 v2, 0x42580000    # 54.0f

    mul-float/2addr v0, v2

    sub-float/2addr p1, v0

    add-float/2addr p1, v3

    float-to-int p1, p1

    aput p1, v1, v6

    goto :goto_1

    .line 346
    :pswitch_2
    iget p1, p0, Lcom/miui/home/recents/GestureStubView;->mEarWidth:I

    div-int/lit8 v7, p1, 0x3

    mul-int/2addr v7, v6

    aput v7, v1, v5

    aput v0, v1, v4

    int-to-float p1, p1

    .line 348
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mDensity:F

    mul-float/2addr v0, v2

    add-float/2addr p1, v0

    add-float/2addr p1, v3

    float-to-int p1, p1

    aput p1, v1, v6

    :goto_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hideGestureStub()V
    .locals 2

    const/4 v0, 0x1

    .line 421
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    .line 422
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 423
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    const/4 v1, 0x0

    .line 424
    iput-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 426
    :cond_0
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/GestureStubView;->disableTouch(Z)V

    .line 427
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

    if-eqz v0, :cond_1

    .line 428
    invoke-virtual {v0}, Lcom/miui/home/recents/GestureBackArrowView;->reset()V

    :cond_1
    const-string v0, "GestureStubView"

    const-string v1, "hideGestureStub"

    .line 432
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initGestureEdgeSize()[I
    .locals 5

    const/4 v0, 0x2

    .line 507
    new-array v0, v0, [I

    .line 508
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    .line 509
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mRotation:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 510
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mNotchHeight:I

    iget v4, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    add-int/2addr v1, v4

    aput v1, v0, v2

    .line 511
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    sub-int/2addr v1, v4

    aput v1, v0, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 513
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    aput v1, v0, v2

    .line 514
    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    sub-int/2addr v2, v1

    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mNotchHeight:I

    sub-int/2addr v2, v1

    aput v2, v0, v3

    goto :goto_0

    .line 516
    :cond_1
    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    aput v1, v0, v2

    .line 517
    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    sub-int/2addr v2, v1

    aput v2, v0, v3

    :goto_0
    return-object v0
.end method

.method private initGestureStubSize(I)V
    .locals 4

    .line 494
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->initScreenSizeAndDensity(I)V

    .line 495
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNotch()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 497
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getNotchHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/GestureStubView;->mNotchHeight:I

    .line 498
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/home/launcher/DeviceConfig;->getNotchWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/GestureStubView;->mNotchWidth:I

    .line 499
    iget p1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenHeight:I

    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mNotchWidth:I

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/miui/home/recents/GestureStubView;->mNotchWidth:I

    sub-int p1, v0, p1

    :goto_0
    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/miui/home/recents/GestureStubView;->mEarWidth:I

    .line 501
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->initGestureEdgeSize()[I

    move-result-object p1

    .line 502
    new-instance v0, Lcom/miui/home/recents/GesturesBackController;

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget p1, p1, v3

    invoke-direct {v0, v1, v2, p1}, Lcom/miui/home/recents/GesturesBackController;-><init>(Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;II)V

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    return-void
.end method

.method private initScreenSizeAndDensity(I)V
    .locals 3

    .line 523
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 524
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mDisplay:Landroid/view/Display;

    .line 525
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 527
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_0

    .line 528
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    .line 529
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenHeight:I

    goto :goto_0

    .line 531
    :cond_0
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    .line 532
    iget v0, v0, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mScreenHeight:I

    :goto_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 536
    iget p1, p0, Lcom/miui/home/recents/GestureStubView;->mScreenWidth:I

    const/16 v0, 0x2d0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x438

    const/16 v1, 0x36

    if-eq p1, v0, :cond_1

    .line 544
    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    goto :goto_1

    .line 538
    :cond_1
    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    iput v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    goto :goto_1

    :cond_2
    const/16 p1, 0x28

    .line 541
    iput p1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    iput p1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    goto :goto_1

    .line 547
    :cond_3
    iput p1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    iput p1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    .line 550
    :goto_1
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/miui/home/recents/GestureStubView;->mDensity:F

    return-void
.end method

.method private injectKeyEvent(I)V
    .locals 1

    const/4 v0, 0x1

    .line 931
    invoke-direct {p0, p1, v0}, Lcom/miui/home/recents/GestureStubView;->injectKeyEvent(IZ)V

    return-void
.end method

.method private injectKeyEvent(IZ)V
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "GestureStubView"

    .line 936
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "injectKeyEvent keyCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 940
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/16 v15, 0x8

    const/16 v16, 0x101

    move-object v4, v0

    move-wide/from16 v5, v17

    move-wide/from16 v7, v17

    move/from16 v10, p1

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 943
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v9, 0x1

    move-object v4, v2

    invoke-direct/range {v4 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 946
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/GestureStubView;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/systemui/shared/recents/system/InputEventCompat;->setDisplayId(Landroid/view/InputEvent;I)V

    .line 947
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/GestureStubView;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/shared/recents/system/InputEventCompat;->setDisplayId(Landroid/view/InputEvent;I)V

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    .line 950
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->isSupportEffectGestureBackLinear()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 951
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performGestureBackHandUp(Landroid/view/View;)V

    .line 952
    iget-object v4, v1, Lcom/miui/home/recents/GestureStubView;->mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

    invoke-virtual {v4, v3}, Lcom/miui/home/recents/GestureBackArrowView;->setArrowFeedBackDone(Z)V

    goto :goto_0

    .line 954
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performMeshHeavy(Landroid/view/View;)V

    :cond_1
    :goto_0
    :try_start_0
    const-string v4, "android.hardware.input.InputManager"

    .line 960
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getInstance"

    const/4 v6, 0x0

    .line 961
    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    .line 962
    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 965
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "injectInputEvent"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Landroid/view/InputEvent;

    aput-object v10, v9, v6

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    invoke-virtual {v5, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 966
    new-array v7, v8, [Ljava/lang/Object;

    aput-object v0, v7, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v3

    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    new-array v0, v8, [Ljava/lang/Object;

    aput-object v2, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {v5, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 969
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private injectMotionEvent(I)V
    .locals 21

    move-object/from16 v1, p0

    .line 885
    iget-object v0, v1, Lcom/miui/home/recents/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v2, "GestureStubView"

    .line 891
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "injectMotionEvent action :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " downX: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
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

    .line 891
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v2

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 896
    new-array v11, v2, [Landroid/view/MotionEvent$PointerProperties;

    .line 898
    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    const/4 v15, 0x0

    aput-object v3, v11, v15

    .line 899
    aget-object v3, v11, v15

    invoke-virtual {v0, v15, v3}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 901
    new-array v12, v2, [Landroid/view/MotionEvent$PointerCoords;

    .line 902
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v12, v15

    .line 903
    aget-object v3, v12, v15

    invoke-virtual {v0, v15, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 904
    aget-object v3, v12, v15

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iput v5, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 905
    aget-object v3, v12, v15

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iput v5, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 907
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    .line 908
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    const/4 v10, 0x1

    .line 910
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v14

    .line 911
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v16

    .line 912
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    .line 913
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v20

    move/from16 v9, p1

    move v0, v15

    move v15, v3

    .line 907
    invoke-static/range {v5 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v3

    .line 914
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/GestureStubView;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/shared/recents/system/InputEventCompat;->setDisplayId(Landroid/view/InputEvent;I)V

    :try_start_0
    const-string v4, "android.hardware.input.InputManager"

    .line 917
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getInstance"

    .line 918
    new-array v6, v0, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    .line 919
    new-array v6, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 922
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

    .line 923
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

    .line 925
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private isInSpeedLimit(I)Z
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 253
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX1:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float p1, p1

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX2:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private isSwipeRightInDirection()Z
    .locals 3

    .line 268
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

    .line 270
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mSwipeInRightDirection:Z

    goto :goto_0

    .line 272
    :cond_2
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mSwipeInRightDirection:Z

    .line 274
    :goto_0
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mSwipeInRightDirection:Z

    return v0
.end method

.method private static isUserSetUp(Landroid/content/ContentResolver;)Z
    .locals 2

    .line 286
    sget-boolean v0, Lcom/miui/home/recents/GestureStubView;->isUserSetUp:Z

    if-nez v0, :cond_1

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    .line 287
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "user_setup_complete"

    .line 288
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lcom/miui/home/recents/GestureStubView;->isUserSetUp:Z

    .line 290
    :cond_1
    sget-boolean p0, Lcom/miui/home/recents/GestureStubView;->isUserSetUp:Z

    return p0
.end method

.method private renderView()V
    .locals 2

    .line 640
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    if-eqz v0, :cond_0

    return-void

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    .line 644
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getAnimatingLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 643
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "GestureStubView"

    const-string v1, "renderView"

    .line 646
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 649
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mNeedRender:Z

    .line 650
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private resetRenderProperty(Ljava/lang/String;)V
    .locals 3

    .line 625
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    if-eqz v0, :cond_0

    return-void

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    .line 629
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->getGestureStubWindowParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 628
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "GestureStubView"

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetRenderProperty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 634
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mNeedRender:Z

    .line 635
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private rotateGesture()V
    .locals 2

    .line 1118
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    invoke-virtual {p0, v0}, Lcom/miui/home/recents/GestureStubView;->setSize(I)V

    .line 1119
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

    if-eqz v0, :cond_0

    .line 1120
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1121
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mDisplay:Landroid/view/Display;

    .line 1122
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1123
    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v0}, Lcom/miui/home/recents/GestureBackArrowView;->setDisplayWidth(I)V

    :cond_0
    return-void
.end method

.method static supportNextTask(Landroid/app/KeyguardManager;Landroid/content/ContentResolver;)Z
    .locals 0

    .line 282
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

.method private updateAssistXPosition()V
    .locals 4

    .line 259
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX1:F

    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    sub-float v2, v1, v0

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX1:F

    .line 260
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX2:F

    sub-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX2:F

    return-void
.end method


# virtual methods
.method public adaptAndRender()V
    .locals 1

    .line 875
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->adaptNotch()V

    const-string v0, "adaptAndRender"

    .line 876
    invoke-direct {p0, v0}, Lcom/miui/home/recents/GestureStubView;->resetRenderProperty(Ljava/lang/String;)V

    return-void
.end method

.method public clearGestureStub()V
    .locals 2

    .line 485
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->hideGestureStub()V

    .line 486
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const-string v0, "GestureStubView"

    const-string v1, "clearGestureStub"

    .line 489
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableQuickSwitch(Z)V
    .locals 0

    .line 856
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mDisableQuickSwitch:Z

    return-void
.end method

.method public disableTouch(Z)V
    .locals 1

    .line 439
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisableTouch:Z

    if-eq v0, p1, :cond_1

    .line 440
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mDisableTouch:Z

    .line 441
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    .line 445
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 448
    :cond_0
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 451
    :goto_0
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public enableGestureBackAnimation(Z)V
    .locals 3

    .line 848
    iput-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureAnimationEnabled:Z

    .line 849
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/GesturesBackController;->enableGestureBackAnimation(Z)V

    const-string v0, "GestureStubView"

    .line 851
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableGestureBackAnimation enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 10

    .line 607
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mNeedRender:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->getWidth()I

    move-result v0

    .line 609
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->getHeight()I

    move-result v1

    const-string v2, "GestureStubView"

    .line 611
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

    .line 614
    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mLocation:[I

    invoke-virtual {p0, v2}, Lcom/miui/home/recents/GestureStubView;->getLocationInWindow([I)V

    .line 615
    iget-object v2, p0, Lcom/miui/home/recents/GestureStubView;->mLocation:[I

    const/4 v3, 0x0

    aget v5, v2, v3

    const/4 v4, 0x1

    .line 616
    aget v6, v2, v4

    add-int v7, v5, v0

    add-int v8, v6, v1

    .line 617
    sget-object v9, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return v3

    .line 621
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result p1

    return p1
.end method

.method public hideGestureStubDelay()V
    .locals 4

    .line 416
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStubView$H;->removeMessages(I)V

    .line 417
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/recents/GestureStubView$H;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public isDisableQuickSwitch()Z
    .locals 1

    .line 860
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisableQuickSwitch:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDisableOldQuickSwitch()Z

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
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 325
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 326
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mSettingsObserver:Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->register()V

    .line 327
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mDisplayListener:Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .line 460
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 462
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    const-string v0, "GestureStubView"

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged   changes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 468
    iget-boolean p1, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    if-nez p1, :cond_5

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    :cond_3
    const/4 p1, -0x1

    .line 469
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->initScreenSizeAndDensity(I)V

    .line 470
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

    if-eqz p1, :cond_4

    .line 471
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStubView;->removeView(Landroid/view/View;)V

    .line 473
    :cond_4
    iget p1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStubView;->setGestureStubPosition(I)V

    .line 474
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    if-eqz p1, :cond_5

    .line 475
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->initGestureEdgeSize()[I

    move-result-object p1

    .line 476
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    aget v3, p1, v2

    aget p1, p1, v1

    invoke-virtual {v0, v3, p1}, Lcom/miui/home/recents/GesturesBackController;->setGestureEdgeWidth(II)V

    .line 480
    :cond_5
    invoke-direct {p0, v2}, Lcom/miui/home/recents/GestureStubView;->adaptRotation(Z)V

    .line 481
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->adaptNotchHidden()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 393
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 394
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mSettingsObserver:Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;

    invoke-virtual {v0}, Lcom/miui/home/recents/GestureStubView$MiuiSettingsObserver;->unregister()V

    .line 395
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/miui/home/recents/GestureStubView;->mDisplayListener:Lcom/miui/home/recents/GestureStubView$StubViewDisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 745
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 748
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrAction:I

    .line 750
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrAction:I

    const/16 v2, 0xff

    const/4 v3, 0x1

    const-wide/16 v4, 0x96

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 772
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    .line 773
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrY:F

    .line 775
    iget v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrY:F

    iget v4, p0, Lcom/miui/home/recents/GestureStubView;->mDownY:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    iget v5, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    iget v6, p0, Lcom/miui/home/recents/GestureStubView;->mDownX:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v4

    cmpl-float v0, v0, v5

    if-lez v0, :cond_5

    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    if-nez v0, :cond_5

    .line 778
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/GestureStubView$H;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "GestureStubView"

    const-string v2, "up-slide detected, sendMessage MSG_SET_GESTURE_STUB_UNTOUCHABLE"

    .line 781
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 790
    :pswitch_1
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_1

    return v3

    .line 795
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iput v6, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    .line 796
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iput v6, p0, Lcom/miui/home/recents/GestureStubView;->mCurrY:F

    .line 797
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    .line 800
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v4, v6, v4

    if-gez v4, :cond_2

    iget-boolean v4, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    if-nez v4, :cond_2

    .line 802
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->clearMessages()V

    .line 804
    iget v4, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    sub-float/2addr v4, v5

    .line 805
    iget v5, p0, Lcom/miui/home/recents/GestureStubView;->mCurrY:F

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    sub-float/2addr v5, v0

    .line 807
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    if-nez v0, :cond_2

    .line 808
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v6, 0x41f00000    # 30.0f

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_2

    .line 809
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_2

    .line 810
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/GestureStubView$H;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "GestureStubView"

    .line 814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currTime - mDownTime < MSG_CHECK_GESTURE_STUB_TOUCHABLE_TIMEOUT updateViewLayout UnTouchable, diffX:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " diffY:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "GestureStubView"

    .line 823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_UP: mIsGestureStarted: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mIsGestureAnimationEnabled: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureAnimationEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureAnimationEnabled:Z

    if-eqz v0, :cond_3

    .line 828
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    const/16 v2, 0x102

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Lcom/miui/home/recents/GestureStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 832
    :cond_3
    iput-boolean v1, p0, Lcom/miui/home/recents/GestureStubView;->mIsGestureStarted:Z

    goto :goto_0

    .line 752
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX2:F

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mAssistX1:F

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mDownX:F

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrX:F

    .line 753
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mDownY:F

    iput v0, p0, Lcom/miui/home/recents/GestureStubView;->mCurrY:F

    .line 754
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_4

    .line 755
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 757
    :cond_4
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDownEvent:Landroid/view/MotionEvent;

    .line 760
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Lcom/miui/home/recents/GestureStubView$H;->removeMessages(I)V

    .line 761
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    .line 762
    invoke-virtual {v0, v2}, Lcom/miui/home/recents/GestureStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 761
    invoke-virtual {v0, v2, v4, v5}, Lcom/miui/home/recents/GestureStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v0, "GestureStubView"

    const-string v2, "onTouch ACTION_DOWN sendMessageDelayed MSG_CHECK_GESTURE_STUB_TOUCHABLE"

    .line 766
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    if-eqz v0, :cond_6

    iget v2, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6

    iget-boolean v2, p0, Lcom/miui/home/recents/GestureStubView;->mPendingResetStatus:Z

    if-nez v2, :cond_6

    .line 840
    invoke-virtual {v0, p1}, Lcom/miui/home/recents/GesturesBackController;->onPointerEvent(Landroid/view/MotionEvent;)V

    return v3

    :cond_6
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

.method public setGestureStubPosition(I)V
    .locals 2

    .line 864
    iput p1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    .line 865
    new-instance p1, Lcom/miui/home/recents/GestureBackArrowView;

    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubPos:I

    invoke-direct {p1, v0, v1}, Lcom/miui/home/recents/GestureBackArrowView;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

    .line 866
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

    invoke-virtual {p0, p1}, Lcom/miui/home/recents/GestureStubView;->addView(Landroid/view/View;)V

    .line 868
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 869
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisplay:Landroid/view/Display;

    .line 870
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 871
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGestureBackArrowView:Lcom/miui/home/recents/GestureBackArrowView;

    iget p1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, p1}, Lcom/miui/home/recents/GestureBackArrowView;->setDisplayWidth(I)V

    return-void
.end method

.method public setSize(I)V
    .locals 3

    .line 589
    iput p1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubDefaultSize:I

    iput p1, p0, Lcom/miui/home/recents/GestureStubView;->mGestureStubSize:I

    .line 590
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->adaptNotch()V

    .line 591
    iget-object p1, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    if-eqz p1, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/miui/home/recents/GestureStubView;->initGestureEdgeSize()[I

    move-result-object p1

    .line 593
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mGesturesBackController:Lcom/miui/home/recents/GesturesBackController;

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget p1, p1, v2

    invoke-virtual {v0, v1, p1}, Lcom/miui/home/recents/GesturesBackController;->setGestureEdgeWidth(II)V

    .line 597
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/home/recents/GestureStubView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "setSize"

    .line 598
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GestureStubView;->resetRenderProperty(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 601
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public showGestureStub()V
    .locals 2

    .line 400
    iget-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mAnimating:Z

    if-eqz v0, :cond_0

    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/GestureStubView;->mHandler:Lcom/miui/home/recents/GestureStubView$H;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/GestureStubView$H;->removeMessages(I)V

    const/4 v0, 0x0

    .line 405
    iput-boolean v0, p0, Lcom/miui/home/recents/GestureStubView;->mKeepHidden:Z

    const-string v1, "showGestureStub"

    .line 406
    invoke-direct {p0, v1}, Lcom/miui/home/recents/GestureStubView;->resetRenderProperty(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/GestureStubView;->setVisibility(I)V

    .line 408
    invoke-virtual {p0, v0}, Lcom/miui/home/recents/GestureStubView;->disableTouch(Z)V

    const-string v0, "GestureStubView"

    const-string v1, "showGestureStub"

    .line 411
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
