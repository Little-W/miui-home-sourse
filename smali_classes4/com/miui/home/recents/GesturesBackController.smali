.class public Lcom/miui/home/recents/GesturesBackController;
.super Ljava/lang/Object;
.source "GesturesBackController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

.field private mContinuousBackFinishTime:J

.field private mDownRealY:F

.field private mDownX:F

.field private mDownY:F

.field private mDragDirection:I

.field private mGestureEdgeLeft:I

.field private mGestureEdgeRight:I

.field private volatile mIsGestureAnimationEnabled:Z

.field private mSwipeStatus:I

.field private mWithoutAnimatingDragDirection:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;II)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/miui/home/recents/GesturesBackController;->mDragDirection:I

    const/4 v1, 0x4

    .line 40
    iput v1, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    .line 41
    iput v0, p0, Lcom/miui/home/recents/GesturesBackController;->mWithoutAnimatingDragDirection:I

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/miui/home/recents/GesturesBackController;->mIsGestureAnimationEnabled:Z

    .line 57
    iput-object p1, p0, Lcom/miui/home/recents/GesturesBackController;->mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    .line 58
    iput p2, p0, Lcom/miui/home/recents/GesturesBackController;->mGestureEdgeLeft:I

    .line 59
    iput p3, p0, Lcom/miui/home/recents/GesturesBackController;->mGestureEdgeRight:I

    return-void
.end method

.method static convertOffset(F)F
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x42b40000    # 90.0f

    const/high16 v1, 0x43b40000    # 360.0f

    .line 267
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr p0, v0

    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 268
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v2

    sub-double/2addr v2, v0

    double-to-float p0, v2

    return p0
.end method

.method private isDoFeedBack(I)Z
    .locals 0

    .line 249
    sget-boolean p0, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->sIsSupportHapticV2:Z

    if-nez p0, :cond_0

    const/4 p0, 0x2

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isFinished(FI)Z
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x42b40000    # 90.0f

    const/high16 v1, 0x43b40000    # 360.0f

    .line 272
    invoke-static {p0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p0, v1

    add-float/2addr p0, v0

    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x2

    if-le p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private processPointerEvent(Landroid/view/MotionEvent;Lcom/miui/home/recents/GestureStubView;)V
    .locals 9

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_b

    const-string v6, "GesturesBackController"

    const/4 v7, 0x3

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_0

    if-eq v2, v7, :cond_4

    goto/16 :goto_5

    .line 178
    :cond_0
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    if-ne v2, v5, :cond_1

    goto/16 :goto_5

    .line 183
    :cond_1
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mDragDirection:I

    if-ne v2, v5, :cond_2

    .line 184
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mDownX:F

    sub-float/2addr v0, v2

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mDownX:F

    sub-float v0, v2, v0

    .line 185
    :goto_0
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mDownY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 186
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    if-ne v2, v3, :cond_3

    const/high16 v2, 0x41a00000    # 20.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_3

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_3

    .line 189
    iput v4, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    new-array v1, v4, [I

    .line 192
    invoke-virtual {p2, v1}, Lcom/miui/home/recents/GestureStubView;->getLocationOnScreen([I)V

    .line 197
    iget-object p2, p0, Lcom/miui/home/recents/GesturesBackController;->mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    iget-boolean v2, p0, Lcom/miui/home/recents/GesturesBackController;->mIsGestureAnimationEnabled:Z

    iget v3, p0, Lcom/miui/home/recents/GesturesBackController;->mDownRealY:F

    aget v1, v1, v5

    int-to-float v1, v1

    add-float/2addr v3, v1

    invoke-interface {p2, v2, v3}, Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;->onSwipeStart(ZF)V

    .line 201
    :cond_3
    iget p2, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    if-ne p2, v4, :cond_e

    const-string p2, "onPointerEvent MotionEvent.ACTION_MOVE processMiuiGestures"

    .line 203
    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-boolean p2, p0, Lcom/miui/home/recents/GesturesBackController;->mIsGestureAnimationEnabled:Z

    if-eqz p2, :cond_e

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide p1

    sub-long/2addr v1, p1

    long-to-int p1, v1

    int-to-float p1, p1

    div-float p1, v0, p1

    float-to-int p1, p1

    .line 210
    iget-object p0, p0, Lcom/miui/home/recents/GesturesBackController;->mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    invoke-static {v0, p1}, Lcom/miui/home/recents/GesturesBackController;->isFinished(FI)Z

    move-result p1

    invoke-interface {p0, p1, v0}, Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;->onSwipeProcess(ZF)V

    goto/16 :goto_5

    .line 216
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x0

    if-ne p2, v7, :cond_5

    move p2, v5

    goto :goto_1

    :cond_5
    move p2, v1

    .line 217
    :goto_1
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    if-ne v2, v4, :cond_a

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v2, v7

    long-to-int v2, v2

    .line 219
    iget v3, p0, Lcom/miui/home/recents/GesturesBackController;->mDragDirection:I

    if-ne v3, v5, :cond_6

    .line 220
    iget v3, p0, Lcom/miui/home/recents/GesturesBackController;->mDownX:F

    sub-float/2addr v0, v3

    goto :goto_2

    :cond_6
    iget v3, p0, Lcom/miui/home/recents/GesturesBackController;->mDownX:F

    sub-float v0, v3, v0

    :goto_2
    int-to-float v2, v2

    div-float v2, v0, v2

    float-to-int v2, v2

    if-nez p2, :cond_7

    .line 222
    invoke-static {v0, v2}, Lcom/miui/home/recents/GesturesBackController;->isFinished(FI)Z

    move-result p2

    if-eqz p2, :cond_7

    move v1, v5

    .line 224
    :cond_7
    iget-boolean p2, p0, Lcom/miui/home/recents/GesturesBackController;->mIsGestureAnimationEnabled:Z

    if-eqz p2, :cond_8

    const/16 p2, 0x10

    .line 225
    iput p2, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    .line 226
    iget-object p2, p0, Lcom/miui/home/recents/GesturesBackController;->mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    invoke-direct {p0, v2}, Lcom/miui/home/recents/GesturesBackController;->isDoFeedBack(I)Z

    move-result v3

    invoke-interface {p2, v1, v0, v3}, Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;->onSwipeStop(ZFZ)V

    goto :goto_3

    :cond_8
    if-eqz v1, :cond_9

    .line 228
    iget-object p2, p0, Lcom/miui/home/recents/GesturesBackController;->mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    invoke-interface {p2}, Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;->onSwipeStopDirect()V

    .line 231
    :cond_9
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/miui/home/recents/GesturesBackController;->mContinuousBackFinishTime:J

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onPointerEvent MotionEvent.ACTION_UP stopGestures isFinish:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " speed:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 238
    :cond_a
    iget-object p1, p0, Lcom/miui/home/recents/GesturesBackController;->mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    invoke-interface {p1}, Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;->onSwipeTriggerFailed()V

    :goto_4
    const/4 p1, -0x1

    .line 241
    iput p1, p0, Lcom/miui/home/recents/GesturesBackController;->mDragDirection:I

    goto :goto_5

    .line 162
    :cond_b
    iput v0, p0, Lcom/miui/home/recents/GesturesBackController;->mDownX:F

    .line 163
    iput v1, p0, Lcom/miui/home/recents/GesturesBackController;->mDownY:F

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/recents/GesturesBackController;->mDownRealY:F

    .line 166
    iget p1, p0, Lcom/miui/home/recents/GesturesBackController;->mGestureEdgeLeft:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_c

    .line 167
    iput v3, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    .line 168
    iput v5, p0, Lcom/miui/home/recents/GesturesBackController;->mDragDirection:I

    goto :goto_5

    .line 169
    :cond_c
    iget p1, p0, Lcom/miui/home/recents/GesturesBackController;->mGestureEdgeRight:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_d

    .line 170
    iput v3, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    .line 171
    iput v4, p0, Lcom/miui/home/recents/GesturesBackController;->mDragDirection:I

    goto :goto_5

    .line 173
    :cond_d
    iput v5, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    :cond_e
    :goto_5
    return-void
.end method


# virtual methods
.method enableGestureBackAnimation(Z)V
    .locals 0

    .line 259
    iput-boolean p1, p0, Lcom/miui/home/recents/GesturesBackController;->mIsGestureAnimationEnabled:Z

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;Lcom/miui/home/recents/GestureStubView;)V
    .locals 3

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPointerEvent swipeStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GesturesBackController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget v0, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    .line 69
    iget-object v0, p0, Lcom/miui/home/recents/GesturesBackController;->mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    invoke-interface {v0}, Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;->onActionDownInAnim()V

    const/4 v0, 0x4

    .line 70
    iput v0, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/GesturesBackController;->processPointerEvent(Landroid/view/MotionEvent;Lcom/miui/home/recents/GestureStubView;)V

    const-string p0, "mSwipeStatus == SWIPE_STATUS_ANIMATING, processPointerEvent"

    .line 74
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 99
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/GesturesBackController;->processPointerEvent(Landroid/view/MotionEvent;Lcom/miui/home/recents/GestureStubView;)V

    const-string p0, "mSwipeStatus != SWIPE_STATUS_ANIMATING, processPointerEvent"

    .line 101
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x1

    .line 277
    iput v0, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    return-void
.end method

.method setGestureEdgeWidth(II)V
    .locals 0

    .line 254
    iput p1, p0, Lcom/miui/home/recents/GesturesBackController;->mGestureEdgeLeft:I

    .line 255
    iput p2, p0, Lcom/miui/home/recents/GesturesBackController;->mGestureEdgeRight:I

    return-void
.end method
