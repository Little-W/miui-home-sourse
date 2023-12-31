.class public Lcom/miui/home/recents/FsGestureAssistHelper;
.super Ljava/lang/Object;
.source "FsGestureAssistHelper.java"


# instance fields
.field private mAssistDistantThreshold:F

.field private mAssistLastProgress:F

.field private mAssistantWidth:I

.field private mContext:Landroid/content/Context;

.field private mCurrentX:F

.field private mCurrentY:F

.field private mDownX:F

.field private mDownY:F

.field private mLaunchedAssistant:Z

.field private mResetAnim:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistantWidth:I

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701bd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistDistantThreshold:F

    .line 49
    invoke-direct {p0}, Lcom/miui/home/recents/FsGestureAssistHelper;->initResetAnim()V

    return-void
.end method

.method private initResetAnim()V
    .locals 2

    .line 57
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mResetAnim:Landroid/animation/ValueAnimator;

    .line 58
    iget-object v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mResetAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 59
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

    .line 72
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

    .line 73
    iget-object v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mResetAnim:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistLastProgress:F

    const/high16 v2, 0x43960000    # 300.0f

    mul-float/2addr v1, v2

    float-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 74
    iget-object p0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mResetAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateAssistantProgress(Landroid/view/View;)V
    .locals 4

    .line 105
    iget-boolean v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mLaunchedAssistant:Z

    if-nez v0, :cond_2

    .line 106
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

    .line 107
    iget v2, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistDistantThreshold:F

    div-float/2addr v0, v2

    const/4 v2, 0x0

    .line 108
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistLastProgress:F

    .line 109
    sget-object v2, Lcom/miui/home/recents/SystemUiProxyWrapper;->INSTANCE:Lcom/miui/home/recents/util/MainThreadInitializedObject;

    invoke-virtual {v2}, Lcom/miui/home/recents/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/home/recents/SystemUiProxyWrapper;

    .line 111
    iget v3, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistLastProgress:F

    cmpl-float v1, v3, v1

    if-nez v1, :cond_1

    .line 112
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x53

    const-string v3, "triggered_by"

    .line 113
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x1

    const-string v3, "invocation_type"

    .line 114
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {v2}, Lcom/miui/home/recents/SystemUiProxyWrapper;->onAssistantGestureCompletion()V

    .line 117
    invoke-virtual {v2, v0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->startAssistant(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 122
    :cond_0
    iput-boolean v1, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mLaunchedAssistant:Z

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 124
    invoke-virtual {v2, v0}, Lcom/miui/home/recents/SystemUiProxyWrapper;->onAssistantProgress(F)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public canTriggerAssistantAction(FFI)Z
    .locals 1

    .line 130
    invoke-static {}, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->getInstance()Lcom/miui/home/recents/FsGestureAssistEnableHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/FsGestureAssistEnableHelper;->supportAssistantGesture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-static {p3}, Lcom/miui/home/recents/FsGestureAssistHelper;->isAssistantGestureDisabled(I)Z

    move-result p3

    if-nez p3, :cond_1

    iget p0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistantWidth:I

    int-to-float p3, p0

    cmpg-float p3, p1, p3

    if-ltz p3, :cond_0

    int-to-float p0, p0

    sub-float/2addr p2, p0

    cmpl-float p0, p1, p2

    if-lez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAssistantWidth()I
    .locals 0

    .line 53
    iget p0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mAssistantWidth:I

    return p0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 1

    .line 78
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mCurrentX:F

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mCurrentY:F

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    if-eq v0, p1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/home/recents/FsGestureAssistHelper;->updateAssistantProgress(Landroid/view/View;)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/util/PowerKeeperManager;->getInstance()Lcom/miui/home/launcher/util/PowerKeeperManager;

    move-result-object p1

    sget-object p2, Lcom/miui/home/launcher/util/PowerKeeperManager$Status;->GESTURE_END:Lcom/miui/home/launcher/util/PowerKeeperManager$Status;

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/util/PowerKeeperManager;->notifyPowerKeeperGesture(Lcom/miui/home/launcher/util/PowerKeeperManager$Status;)V

    .line 95
    iget-boolean p1, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mLaunchedAssistant:Z

    if-nez p1, :cond_3

    .line 96
    invoke-direct {p0}, Lcom/miui/home/recents/FsGestureAssistHelper;->startResetAnim()V

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iput p2, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mDownX:F

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mDownY:F

    const/4 p1, 0x0

    .line 84
    iput-boolean p1, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mLaunchedAssistant:Z

    .line 85
    iget-object p1, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mResetAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 86
    iget-object p0, p0, Lcom/miui/home/recents/FsGestureAssistHelper;->mResetAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    :goto_0
    return-void
.end method
