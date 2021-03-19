.class Lmiuix/overscroller/widget/DynamicScroller;
.super Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;
.source "DynamicScroller.java"

# interfaces
.implements Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$FinalValueListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;
    }
.end annotation


# instance fields
.field private mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

.field private mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

.field private mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

.field private mValue:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 37
    invoke-direct {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance p1, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;-><init>()V

    iput-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mValue:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;

    .line 17
    new-instance p1, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mValue:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;)V

    iput-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    .line 20
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    new-instance v0, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    invoke-direct {v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;-><init>()V

    invoke-virtual {p1, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->setSpring(Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;)Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    .line 21
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->setMinimumVisibleChange(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 22
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->getSpring()Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const v1, 0x3f7851ec    # 0.97f

    invoke-virtual {p1, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 23
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->getSpring()Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const v1, 0x43028000    # 130.5f

    invoke-virtual {p1, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 24
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->getSpring()Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const-wide v1, 0x408f400000000000L    # 1000.0

    invoke-virtual {p1, v1, v2}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->setTimeRatio(D)Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    .line 27
    new-instance p1, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mValue:Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p1, v1, p0}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/FloatValueHolder;Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation$FinalValueListener;)V

    iput-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 30
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {p1, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->setMinimumVisibleChange(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 31
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    const v0, 0x3ef3cf3e

    invoke-virtual {p1, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->setFriction(F)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    return-void
.end method

.method static synthetic access$000(Lmiuix/overscroller/widget/DynamicScroller;)Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;
    .locals 0

    .line 12
    iget-object p0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/overscroller/widget/DynamicScroller;)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;
    .locals 0

    .line 12
    iget-object p0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/overscroller/widget/DynamicScroller;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lmiuix/overscroller/widget/DynamicScroller;->resetHandler()V

    return-void
.end method

.method static synthetic access$300(Lmiuix/overscroller/widget/DynamicScroller;IIFII)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p5}, Lmiuix/overscroller/widget/DynamicScroller;->doSpring(IIFII)V

    return-void
.end method

.method private doFling(IIIII)V
    .locals 6

    .line 143
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->setStartValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 144
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    int-to-long v0, p1

    .line 145
    iget-object v2, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v2}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->predictNaturalDest()F

    move-result v2

    float-to-long v2, v2

    add-long/2addr v0, v2

    int-to-long v2, p4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 150
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    sub-int v1, p4, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->predictTimeTo(F)F

    move-result v0

    float-to-int v0, v0

    move v1, p4

    goto :goto_0

    :cond_0
    int-to-long v2, p3

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 153
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    sub-int v1, p3, p1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->predictTimeTo(F)F

    move-result v0

    float-to-int v0, v0

    move v1, p3

    goto :goto_0

    :cond_1
    long-to-int v0, v0

    .line 156
    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->predictDuration()F

    move-result v1

    float-to-int v1, v1

    move v5, v1

    move v1, v0

    move v0, v5

    :goto_0
    const/4 v2, 0x0

    .line 160
    invoke-virtual {p0, v2}, Lmiuix/overscroller/widget/DynamicScroller;->setFinished(Z)V

    .line 161
    invoke-virtual {p0, p2}, Lmiuix/overscroller/widget/DynamicScroller;->setCurrVelocity(F)V

    .line 162
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lmiuix/overscroller/widget/DynamicScroller;->setStartTime(J)V

    .line 163
    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/DynamicScroller;->setCurrentPosition(I)V

    .line 164
    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/DynamicScroller;->setStart(I)V

    .line 165
    invoke-virtual {p0, v0}, Lmiuix/overscroller/widget/DynamicScroller;->setDuration(I)V

    .line 166
    invoke-virtual {p0, v1}, Lmiuix/overscroller/widget/DynamicScroller;->setFinal(I)V

    .line 167
    invoke-virtual {p0, v2}, Lmiuix/overscroller/widget/DynamicScroller;->setState(I)V

    .line 170
    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 171
    invoke-static {p4, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 173
    new-instance v2, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    iget-object v3, p0, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    invoke-direct {v2, v3, p1, p2}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;IF)V

    iput-object v2, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 174
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    new-instance p2, Lmiuix/overscroller/widget/DynamicScroller$1;

    invoke-direct {p2, p0, p3, p4, p5}, Lmiuix/overscroller/widget/DynamicScroller$1;-><init>(Lmiuix/overscroller/widget/DynamicScroller;III)V

    invoke-virtual {p1, p2}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->setOnFinishedListener(Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler$OnFinishedListener;)V

    .line 195
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    invoke-virtual {p1, v0}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->setMinValue(I)V

    .line 196
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    invoke-virtual {p1, v1}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->setMaxValue(I)V

    .line 197
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    invoke-virtual {p1}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->start()V

    return-void
.end method

.method private doSpring(IIFII)V
    .locals 4

    const/high16 v0, 0x45fa0000    # 8000.0f

    cmpl-float v1, p3, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const-string v1, "%f is too fast for spring, slow down"

    const/4 v3, 0x1

    .line 90
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, v3, v2

    invoke-static {v1, v3}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    move p3, v0

    .line 95
    :cond_0
    invoke-virtual {p0, v2}, Lmiuix/overscroller/widget/DynamicScroller;->setFinished(Z)V

    .line 96
    invoke-virtual {p0, p3}, Lmiuix/overscroller/widget/DynamicScroller;->setCurrVelocity(F)V

    .line 97
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiuix/overscroller/widget/DynamicScroller;->setStartTime(J)V

    .line 98
    invoke-virtual {p0, p2}, Lmiuix/overscroller/widget/DynamicScroller;->setCurrentPosition(I)V

    .line 99
    invoke-virtual {p0, p2}, Lmiuix/overscroller/widget/DynamicScroller;->setStart(I)V

    const v0, 0x7fffffff

    .line 100
    invoke-virtual {p0, v0}, Lmiuix/overscroller/widget/DynamicScroller;->setDuration(I)V

    .line 101
    invoke-virtual {p0, p4}, Lmiuix/overscroller/widget/DynamicScroller;->setFinal(I)V

    .line 102
    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/DynamicScroller;->setState(I)V

    .line 105
    new-instance p1, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    invoke-direct {p1, v0, p2, p3}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;-><init>(Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;IF)V

    iput-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    .line 106
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->getSpring()Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    move-result-object p1

    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    invoke-virtual {v0, p4}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->getOffset(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->setFinalPosition(F)Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    if-eqz p5, :cond_2

    const/4 p1, 0x0

    cmpg-float p1, p3, p1

    if-gez p1, :cond_1

    .line 109
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    sub-int p3, p4, p5

    invoke-virtual {p1, p3}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->setMinValue(I)V

    .line 110
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->setMaxValue(I)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p1, p2}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->setMinValue(I)V

    .line 113
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    add-int/2addr p4, p5

    invoke-virtual {p1, p4}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->setMaxValue(I)V

    .line 116
    :cond_2
    :goto_0
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    invoke-virtual {p1}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->start()V

    return-void
.end method

.method private resetHandler()V
    .locals 4

    .line 201
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    if-eqz v0, :cond_0

    const-string v0, "resetting current handler: state(%d), anim(%s), value(%d), velocity(%f)"

    const/4 v1, 0x4

    .line 202
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 203
    invoke-virtual {p0}, Lmiuix/overscroller/widget/DynamicScroller;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    invoke-virtual {v3}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->getAnimation()Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    iget v3, v3, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    iget v3, v3, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mVelocity:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    .line 202
    invoke-static {v0, v1}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    invoke-virtual {v0}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->cancel()V

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    :cond_0
    return-void
.end method

.method private startAfterEdge(IIIII)V
    .locals 11

    move-object v6, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    const-string v0, "startAfterEdge: start(%d) velocity(%d) boundary(%d, %d) over(%d)"

    const/4 v1, 0x5

    .line 210
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v1, v8

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v1, v9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x2

    aput-object v7, v1, v10

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x3

    aput-object v7, v1, v10

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v10, 0x4

    aput-object v7, v1, v10

    invoke-static {v0, v1}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-le v2, v3, :cond_0

    if-ge v2, v4, :cond_0

    .line 212
    invoke-virtual {p0, v9}, Lmiuix/overscroller/widget/DynamicScroller;->setFinished(Z)V

    return-void

    :cond_0
    if-le v2, v4, :cond_1

    move v0, v9

    goto :goto_0

    :cond_1
    move v0, v8

    :goto_0
    if-eqz v0, :cond_2

    move v7, v4

    goto :goto_1

    :cond_2
    move v7, v3

    :goto_1
    sub-int v1, v2, v7

    if-eqz v5, :cond_3

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    mul-int/2addr v1, v5

    if-ltz v1, :cond_3

    move v8, v9

    :cond_3
    if-eqz v8, :cond_4

    const-string v0, "spring forward"

    .line 222
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    const/4 v1, 0x2

    int-to-float v3, v5

    move-object v0, p0

    move v2, p1

    move v4, v7

    move/from16 v5, p5

    .line 223
    invoke-direct/range {v0 .. v5}, Lmiuix/overscroller/widget/DynamicScroller;->doSpring(IIFII)V

    goto :goto_2

    .line 225
    :cond_4
    iget-object v1, v6, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    int-to-float v8, v2

    invoke-virtual {v1, v8}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->setStartValue(F)Lmiuix/overscroller/internal/dynamicanimation/animation/DynamicAnimation;

    .line 226
    iget-object v1, v6, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    int-to-float v8, v5

    invoke-virtual {v1, v8}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->setStartVelocity(F)Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    .line 227
    iget-object v1, v6, Lmiuix/overscroller/widget/DynamicScroller;->mFlingAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;

    invoke-virtual {v1}, Lmiuix/overscroller/internal/dynamicanimation/animation/FlingAnimation;->predictNaturalDest()F

    move-result v1

    if-eqz v0, :cond_5

    int-to-float v9, v4

    cmpg-float v9, v1, v9

    if-ltz v9, :cond_6

    :cond_5
    if-nez v0, :cond_7

    int-to-float v0, v3

    cmpl-float v0, v1, v0

    if-lez v0, :cond_7

    :cond_6
    const-string v0, "fling to content"

    .line 229
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    move-object v0, p0

    move v1, p1

    move v2, p4

    move v3, p2

    move v4, p3

    move/from16 v5, p5

    .line 230
    invoke-direct/range {v0 .. v5}, Lmiuix/overscroller/widget/DynamicScroller;->doFling(IIIII)V

    goto :goto_2

    :cond_7
    const-string v0, "spring backward"

    .line 232
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, v8

    move v4, v7

    move/from16 v5, p5

    .line 233
    invoke-direct/range {v0 .. v5}, Lmiuix/overscroller/widget/DynamicScroller;->doSpring(IIFII)V

    :goto_2
    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .locals 1

    .line 251
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->continueWhenFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "checking have more work when finish"

    .line 252
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Lmiuix/overscroller/widget/DynamicScroller;->update()Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method finish()V
    .locals 1

    const-string v0, "finish scroller"

    .line 47
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lmiuix/overscroller/widget/DynamicScroller;->getFinal()I

    move-result v0

    invoke-virtual {p0, v0}, Lmiuix/overscroller/widget/DynamicScroller;->setCurrentPosition(I)V

    const/4 v0, 0x1

    .line 49
    invoke-virtual {p0, v0}, Lmiuix/overscroller/widget/DynamicScroller;->setFinished(Z)V

    .line 51
    invoke-direct {p0}, Lmiuix/overscroller/widget/DynamicScroller;->resetHandler()V

    return-void
.end method

.method fling(IIIII)V
    .locals 6

    const-string v0, "FLING: start(%d) velocity(%d) boundary(%d, %d) over(%d)"

    const/4 v1, 0x5

    .line 121
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x4

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-direct {p0}, Lmiuix/overscroller/widget/DynamicScroller;->resetHandler()V

    if-nez p2, :cond_0

    .line 125
    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/DynamicScroller;->setCurrentPosition(I)V

    .line 126
    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/DynamicScroller;->setStart(I)V

    .line 127
    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/DynamicScroller;->setFinal(I)V

    .line 128
    invoke-virtual {p0, v3}, Lmiuix/overscroller/widget/DynamicScroller;->setDuration(I)V

    .line 129
    invoke-virtual {p0, v4}, Lmiuix/overscroller/widget/DynamicScroller;->setFinished(Z)V

    return-void

    :cond_0
    int-to-double v0, p2

    .line 132
    invoke-virtual {p0, v0, v1}, Lmiuix/overscroller/widget/DynamicScroller;->updateStiffness(D)V

    if-gt p1, p4, :cond_2

    if-ge p1, p3, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    invoke-direct/range {p0 .. p5}, Lmiuix/overscroller/widget/DynamicScroller;->doFling(IIIII)V

    return-void

    :cond_2
    :goto_0
    move-object v0, p0

    move v1, p1

    move v2, p3

    move v3, p4

    move v4, p2

    move v5, p5

    .line 135
    invoke-direct/range {v0 .. v5}, Lmiuix/overscroller/widget/DynamicScroller;->startAfterEdge(IIIII)V

    return-void
.end method

.method notifyEdgeReached(III)V
    .locals 7

    .line 240
    invoke-virtual {p0}, Lmiuix/overscroller/widget/DynamicScroller;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0}, Lmiuix/overscroller/widget/DynamicScroller;->resetHandler()V

    .line 245
    :cond_0
    invoke-virtual {p0}, Lmiuix/overscroller/widget/DynamicScroller;->getCurrVelocity()F

    move-result v0

    float-to-int v5, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lmiuix/overscroller/widget/DynamicScroller;->startAfterEdge(IIIII)V

    :cond_1
    return-void
.end method

.method public onFinalValueArrived(I)V
    .locals 1

    .line 280
    invoke-virtual {p0}, Lmiuix/overscroller/widget/DynamicScroller;->getStart()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lmiuix/overscroller/widget/DynamicScroller;->setFinalPosition(I)V

    return-void
.end method

.method setFinalPosition(I)V
    .locals 0

    .line 57
    invoke-super {p0, p1}, Lmiuix/overscroller/widget/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method springback(III)Z
    .locals 8

    const-string v0, "SPRING_BACK start(%d) boundary(%d, %d)"

    const/4 v1, 0x3

    .line 68
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v1, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v1, v5

    invoke-static {v0, v1}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Lmiuix/overscroller/widget/DynamicScroller;->resetHandler()V

    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v7

    .line 74
    invoke-direct/range {v0 .. v5}, Lmiuix/overscroller/widget/DynamicScroller;->doSpring(IIFII)V

    goto :goto_0

    :cond_1
    if-le p1, p3, :cond_2

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p3

    move v5, v7

    .line 76
    invoke-direct/range {v0 .. v5}, Lmiuix/overscroller/widget/DynamicScroller;->doSpring(IIFII)V

    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/DynamicScroller;->setCurrentPosition(I)V

    .line 79
    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/DynamicScroller;->setStart(I)V

    .line 80
    invoke-virtual {p0, p1}, Lmiuix/overscroller/widget/DynamicScroller;->setFinal(I)V

    .line 81
    invoke-virtual {p0, v4}, Lmiuix/overscroller/widget/DynamicScroller;->setDuration(I)V

    .line 82
    invoke-virtual {p0, v6}, Lmiuix/overscroller/widget/DynamicScroller;->setFinished(Z)V

    .line 85
    :goto_0
    invoke-virtual {p0}, Lmiuix/overscroller/widget/DynamicScroller;->isFinished()Z

    move-result v0

    xor-int/2addr v0, v6

    return v0
.end method

.method update()Z
    .locals 4

    .line 262
    iget-object v0, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    if-nez v0, :cond_0

    const-string v0, "no handler found, aborting"

    .line 263
    invoke-static {v0}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 267
    :cond_0
    invoke-virtual {v0}, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->update()Z

    move-result v0

    .line 269
    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    iget v1, v1, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mValue:I

    invoke-virtual {p0, v1}, Lmiuix/overscroller/widget/DynamicScroller;->setCurrentPosition(I)V

    .line 270
    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    iget v1, v1, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mVelocity:F

    invoke-virtual {p0, v1}, Lmiuix/overscroller/widget/DynamicScroller;->setCurrVelocity(F)V

    .line 271
    invoke-virtual {p0}, Lmiuix/overscroller/widget/DynamicScroller;->getState()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    iget v1, v1, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mValue:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget-object v2, p0, Lmiuix/overscroller/widget/DynamicScroller;->mHandler:Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;

    iget v2, v2, Lmiuix/overscroller/widget/DynamicScroller$OverScrollHandler;->mVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const-string v1, "State Changed: BALLISTIC -> CUBIC"

    .line 272
    invoke-static {v1}, Lmiuix/overscroller/widget/OverScrollLogger;->debug(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, v3}, Lmiuix/overscroller/widget/DynamicScroller;->setState(I)V

    :cond_1
    xor-int/2addr v0, v3

    return v0
.end method

.method public updateStiffness(D)V
    .locals 2

    .line 409
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide v0, 0x40b3880000000000L    # 5000.0

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_0

    .line 410
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->getSpring()Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const p2, 0x4376b333    # 246.7f

    invoke-virtual {p1, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    goto :goto_0

    .line 412
    :cond_0
    iget-object p1, p0, Lmiuix/overscroller/widget/DynamicScroller;->mSpringAnimation:Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {p1}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringAnimation;->getSpring()Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const p2, 0x43028000    # 130.5f

    invoke-virtual {p1, p2}, Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;->setStiffness(F)Lmiuix/overscroller/internal/dynamicanimation/animation/SpringForce;

    :goto_0
    return-void
.end method
