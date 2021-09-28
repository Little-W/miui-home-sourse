.class public Lcom/miui/home/recents/FsGestureAssistHelper;
.super Ljava/lang/Object;
.source "FsGestureAssistHelper.java"


# instance fields
.field private mAssistContentObserver:Landroid/database/ContentObserver;

.field private mAssistDistantThreshold:F

.field private mAssistLastProgress:F

.field private mAssistantWidth:I

.field private mContext:Landroid/content/Context;

.field private mCurrentX:F

.field private mCurrentY:F

.field private mDownX:F

.field private mDownY:F

.field private mIsAssistantAvailable:Z

.field private mLaunchedAssistant:Z

.field private mResetAnim:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistantWidth:I

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700ec

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistDistantThreshold:F

    .line 47
    invoke-direct {p0}, Lcom/miui/home/recents/FsGestureAssistHelper;->initResetAnim()V

    return-void
.end method

.method static synthetic access$002(Lcom/miui/home/recents/FsGestureAssistHelper;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mIsAssistantAvailable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/miui/home/recents/FsGestureAssistHelper;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private initResetAnim()V
    .locals 2

    .line 55
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mResetAnim:Landroid/animation/ValueAnimator;

    .line 56
    iget-object v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mResetAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 57
    iget-object v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mResetAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/recents/FsGestureAssistHelper$1;

    invoke-direct {v1, p0}, Lcom/miui/home/recents/FsGestureAssistHelper$1;-><init>(Lcom/miui/home/recents/FsGestureAssistHelper;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public static isAssistantGestureDisabled(I)Z
    .locals 0

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private startResetAnim()V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mResetAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistLastProgress:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 71
    iget-object v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mResetAnim:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistLastProgress:F

    const/high16 v2, 0x43960000    # 300.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 72
    iget-object v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mResetAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateAssistantProgress()V
    .locals 4

    .line 124
    iget-boolean v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mLaunchedAssistant:Z

    if-nez v0, :cond_2

    .line 125
    iget v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mDownY:F

    iget v1, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mCurrentY:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget v2, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mDownX:F

    iget v3, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mCurrentX:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    .line 126
    iget v2, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistDistantThreshold:F

    div-float/2addr v0, v2

    const/4 v2, 0x0

    .line 127
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistLastProgress:F

    .line 128
    sget-object v2, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    invoke-virtual {v2}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/SystemUiProxyWrapper;

    .line 130
    iget v3, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistLastProgress:F

    cmpl-float v1, v3, v1

    if-nez v1, :cond_1

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "triggered_by"

    const/16 v3, 0x53

    .line 132
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "invocation_type"

    const/4 v3, 0x1

    .line 133
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v2, :cond_0

    .line 135
    invoke-virtual {v2}, Lcom/miui/home/recents/SystemUiProxyWrapper;->onAssistantGestureCompletion()V

    .line 136
    invoke-virtual {v2, v0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->startAssistant(Landroid/os/Bundle;)V

    .line 138
    :cond_0
    iput-boolean v3, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mLaunchedAssistant:Z

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 140
    invoke-virtual {v2, v0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->onAssistantProgress(F)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public canTriggerAssistantAction(FFI)Z
    .locals 1

    .line 150
    iget-boolean v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mIsAssistantAvailable:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-static {p3}, Lcom/miui/home/recents/FsGestureAssistHelper;->isAssistantGestureDisabled(I)Z

    move-result p3

    if-nez p3, :cond_1

    iget p3, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistantWidth:I

    int-to-float v0, p3

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    int-to-float p3, p3

    sub-float/2addr p2, p3

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getAssistantWidth()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistantWidth:I

    return v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mCurrentX:F

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mCurrentY:F

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 110
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/home/recents/FsGestureAssistHelper;->updateAssistantProgress()V

    goto :goto_0

    .line 114
    :pswitch_1
    iget-boolean p1, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mLaunchedAssistant:Z

    if-nez p1, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/miui/home/recents/FsGestureAssistHelper;->startResetAnim()V

    goto :goto_0

    .line 102
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mDownX:F

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mDownY:F

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mLaunchedAssistant:Z

    .line 105
    iget-object p1, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mResetAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mResetAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
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

.method public registerAssistObserver()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/miui/home/recents/FsGestureAssistHelper$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/miui/home/recents/FsGestureAssistHelper$2;-><init>(Lcom/miui/home/recents/FsGestureAssistHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistContentObserver:Landroid/database/ContentObserver;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant"

    .line 88
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 87
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    iget-object v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public supportAssistantGesture()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mIsAssistantAvailable:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isSupportRecentsAndFsGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public unRegisterAssistObserver()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
