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

.field private mDownX:F

.field private mDownY:F

.field private mDragDirection:I

.field private mGestureEdgeLeft:I

.field private mGestureEdgeRight:I

.field private volatile mIsGestureAnimationEnabled:Z

.field private mSwipeStatus:I

.field private mWithoutAnimatingDownX:F

.field private mWithoutAnimatingDragDirection:I


# direct methods
.method public constructor <init>(Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;II)V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/miui/home/recents/GesturesBackController;->mDragDirection:I

    const/4 v1, 0x4

    .line 35
    iput v1, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    .line 36
    iput v0, p0, Lcom/miui/home/recents/GesturesBackController;->mWithoutAnimatingDragDirection:I

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/miui/home/recents/GesturesBackController;->mIsGestureAnimationEnabled:Z

    .line 50
    iput-object p1, p0, Lcom/miui/home/recents/GesturesBackController;->mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    .line 51
    iput p2, p0, Lcom/miui/home/recents/GesturesBackController;->mGestureEdgeLeft:I

    .line 52
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

    .line 233
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

    .line 234
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v2

    sub-double/2addr v2, v0

    double-to-float p0, v2

    return p0
.end method

.method static isFinished(FI)Z
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x42b40000    # 90.0f

    const/high16 v1, 0x43b40000    # 360.0f

    .line 238
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

.method private processPointerEvent(Landroid/view/MotionEvent;)V
    .locals 8

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 159
    :pswitch_0
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    if-ne v2, v5, :cond_0

    goto/16 :goto_4

    .line 164
    :cond_0
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mDragDirection:I

    if-ne v2, v5, :cond_1

    .line 165
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mDownX:F

    sub-float/2addr v0, v2

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mDownX:F

    sub-float v0, v2, v0

    .line 166
    :goto_0
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mDownY:F

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 167
    iget v5, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    if-ne v5, v3, :cond_2

    const/high16 v3, 0x41a00000    # 20.0f

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_2

    .line 170
    iput v4, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    .line 171
    iget-object v2, p0, Lcom/miui/home/recents/GesturesBackController;->mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    iget-boolean v3, p0, Lcom/miui/home/recents/GesturesBackController;->mIsGestureAnimationEnabled:Z

    invoke-interface {v2, v3, v1}, Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;->onSwipeStart(ZF)V

    .line 175
    :cond_2
    iget v1, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    if-ne v1, v4, :cond_a

    const-string v1, "GesturesBackController"

    const-string v2, "onPointerEvent MotionEvent.ACTION_MOVE processMiuiGestures"

    .line 177
    .line 180
    iget-boolean v1, p0, Lcom/miui/home/recents/GesturesBackController;->mIsGestureAnimationEnabled:Z

    if-eqz v1, :cond_a

    .line 181
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    long-to-int p1, v1

    int-to-float p1, p1

    div-float p1, v0, p1

    float-to-int p1, p1

    .line 184
    iget-object v1, p0, Lcom/miui/home/recents/GesturesBackController;->mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    invoke-static {v0, p1}, Lcom/miui/home/recents/GesturesBackController;->isFinished(FI)Z

    move-result p1

    invoke-interface {v1, p1, v0}, Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;->onSwipeProcess(ZF)V

    goto/16 :goto_4

    .line 190
    :pswitch_1
    iget v1, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    if-ne v1, v4, :cond_7

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long/2addr v1, v6

    long-to-int v1, v1

    .line 192
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mDragDirection:I

    if-ne v2, v5, :cond_3

    .line 193
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mDownX:F

    sub-float/2addr v0, v2

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mDownX:F

    sub-float v0, v2, v0

    :goto_1
    int-to-float v1, v1

    div-float v1, v0, v1

    float-to-int v1, v1

    .line 195
    invoke-static {v0, v1}, Lcom/miui/home/recents/GesturesBackController;->isFinished(FI)Z

    move-result v2

    .line 197
    iget-boolean v3, p0, Lcom/miui/home/recents/GesturesBackController;->mIsGestureAnimationEnabled:Z

    if-eqz v3, :cond_5

    const/16 v3, 0x10

    .line 198
    iput v3, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    .line 199
    iget-object v3, p0, Lcom/miui/home/recents/GesturesBackController;->mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    if-ge v1, v4, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    invoke-interface {v3, v2, v0, v5}, Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;->onSwipeStop(ZFZ)V

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    .line 201
    iget-object v0, p0, Lcom/miui/home/recents/GesturesBackController;->mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    invoke-interface {v0}, Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;->onSwipeStopDirect()V

    .line 204
    :cond_6
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/miui/home/recents/GesturesBackController;->mContinuousBackFinishTime:J

    const-string p1, "GesturesBackController"

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPointerEvent MotionEvent.ACTION_UP stopGestures isFinish:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " speed:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    const/4 p1, -0x1

    .line 212
    iput p1, p0, Lcom/miui/home/recents/GesturesBackController;->mDragDirection:I

    goto :goto_4

    .line 144
    :pswitch_2
    iput v0, p0, Lcom/miui/home/recents/GesturesBackController;->mDownX:F

    .line 145
    iput v1, p0, Lcom/miui/home/recents/GesturesBackController;->mDownY:F

    .line 147
    iget p1, p0, Lcom/miui/home/recents/GesturesBackController;->mGestureEdgeLeft:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_8

    .line 148
    iput v3, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    .line 149
    iput v5, p0, Lcom/miui/home/recents/GesturesBackController;->mDragDirection:I

    goto :goto_4

    .line 150
    :cond_8
    iget p1, p0, Lcom/miui/home/recents/GesturesBackController;->mGestureEdgeRight:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_9

    .line 151
    iput v3, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    .line 152
    iput v4, p0, Lcom/miui/home/recents/GesturesBackController;->mDragDirection:I

    goto :goto_4

    .line 154
    :cond_9
    iput v5, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    :cond_a
    :goto_4
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

.method private processPointerEventWithoutAnimating(Landroid/view/MotionEvent;)V
    .locals 7

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/home/recents/GesturesBackController;->mContinuousBackFinishTime:J

    const-string v2, "GesturesBackController"

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processPointerEventWithoutAnimating currX:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " currY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mDragDirection:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/home/recents/GesturesBackController;->mDragDirection:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 102
    :pswitch_0
    iput v0, p0, Lcom/miui/home/recents/GesturesBackController;->mWithoutAnimatingDownX:F

    .line 104
    iget p1, p0, Lcom/miui/home/recents/GesturesBackController;->mGestureEdgeLeft:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    .line 105
    iput v3, p0, Lcom/miui/home/recents/GesturesBackController;->mWithoutAnimatingDragDirection:I

    goto :goto_1

    .line 106
    :cond_0
    iget p1, p0, Lcom/miui/home/recents/GesturesBackController;->mGestureEdgeRight:I

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_5

    const/4 p1, 0x2

    .line 107
    iput p1, p0, Lcom/miui/home/recents/GesturesBackController;->mWithoutAnimatingDragDirection:I

    goto :goto_1

    .line 113
    :cond_1
    :pswitch_1
    iget v1, p0, Lcom/miui/home/recents/GesturesBackController;->mWithoutAnimatingDragDirection:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    if-ne v1, v3, :cond_3

    .line 118
    iget v1, p0, Lcom/miui/home/recents/GesturesBackController;->mWithoutAnimatingDownX:F

    sub-float/2addr v0, v1

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/miui/home/recents/GesturesBackController;->mWithoutAnimatingDownX:F

    sub-float v0, v1, v0

    .line 119
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int p1, v3

    int-to-float v1, p1

    div-float v1, v0, v1

    float-to-int v3, v1

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_4

    .line 123
    iget-object v1, p0, Lcom/miui/home/recents/GesturesBackController;->mCallback:Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;

    invoke-interface {v1}, Lcom/miui/home/recents/GesturesBackController$GesturesBackCallback;->onSwipeStopDirect()V

    :cond_4
    const-string v1, "GesturesBackController"

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processPointerEventWithoutAnimating MotionEvent.ACTION_UP offsetX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " diffTime:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " speed:"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 131
    iput v2, p0, Lcom/miui/home/recents/GesturesBackController;->mWithoutAnimatingDragDirection:I

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method enableGestureBackAnimation(Z)V
    .locals 0

    .line 225
    iput-boolean p1, p0, Lcom/miui/home/recents/GesturesBackController;->mIsGestureAnimationEnabled:Z

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 4

    const-string v0, "GesturesBackController"

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPointerEvent swipeStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    iget v0, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/recents/GesturesBackController;->mContinuousBackFinishTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x4

    .line 65
    iput v0, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 67
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GesturesBackController;->processPointerEvent(Landroid/view/MotionEvent;)V

    const-string p1, "GesturesBackController"

    const-string v0, "mSwipeStatus == SWIPE_STATUS_ANIMATING, processPointerEvent"

    .line 69
    goto :goto_0

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GesturesBackController;->processPointerEventWithoutAnimating(Landroid/view/MotionEvent;)V

    const-string p1, "GesturesBackController"

    const-string v0, "mSwipeStatus == SWIPE_STATUS_ANIMATING, processPointerEventWithoutAnimating"

    .line 77
    goto :goto_0

    .line 82
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/home/recents/GesturesBackController;->processPointerEvent(Landroid/view/MotionEvent;)V

    const-string p1, "GesturesBackController"

    const-string v0, "mSwipeStatus != SWIPE_STATUS_ANIMATING, processPointerEvent"

    .line 84
    :cond_2
    :goto_0
    return-void
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x1

    .line 243
    iput v0, p0, Lcom/miui/home/recents/GesturesBackController;->mSwipeStatus:I

    return-void
.end method

.method setGestureEdgeWidth(II)V
    .locals 0

    .line 220
    iput p1, p0, Lcom/miui/home/recents/GesturesBackController;->mGestureEdgeLeft:I

    .line 221
    iput p2, p0, Lcom/miui/home/recents/GesturesBackController;->mGestureEdgeRight:I

    return-void
.end method
