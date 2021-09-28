.class public abstract Lmiuix/animation/IAnimTarget;
.super Ljava/lang/Object;
.source "IAnimTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final FLAT_ONESHOT:J = 0x1L

.field static final sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final animManager:Lmiuix/animation/internal/AnimManager;

.field public final handler:Lmiuix/animation/internal/TargetHandler;

.field public final id:I

.field mDefaultMinVisible:F

.field mFlags:J

.field mFlagsSetTime:J

.field mMinVisibleChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final mTracker:Lmiuix/animation/internal/TargetVelocityTracker;

.field notifyManager:Lmiuix/animation/internal/NotifyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lmiuix/animation/IAnimTarget;->sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lmiuix/animation/internal/TargetHandler;

    invoke-direct {v0, p0}, Lmiuix/animation/internal/TargetHandler;-><init>(Lmiuix/animation/IAnimTarget;)V

    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 34
    new-instance v0, Lmiuix/animation/internal/AnimManager;

    invoke-direct {v0}, Lmiuix/animation/internal/AnimManager;-><init>()V

    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 38
    new-instance v0, Lmiuix/animation/internal/NotifyManager;

    invoke-direct {v0, p0}, Lmiuix/animation/internal/NotifyManager;-><init>(Lmiuix/animation/IAnimTarget;)V

    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->notifyManager:Lmiuix/animation/internal/NotifyManager;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 42
    iput v0, p0, Lmiuix/animation/IAnimTarget;->mDefaultMinVisible:F

    .line 44
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    .line 50
    sget-object v0, Lmiuix/animation/IAnimTarget;->sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    iput v0, p0, Lmiuix/animation/IAnimTarget;->id:I

    .line 52
    new-instance v0, Lmiuix/animation/internal/TargetVelocityTracker;

    invoke-direct {v0}, Lmiuix/animation/internal/TargetVelocityTracker;-><init>()V

    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->mTracker:Lmiuix/animation/internal/TargetVelocityTracker;

    .line 55
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0, p0}, Lmiuix/animation/internal/AnimManager;->setTarget(Lmiuix/animation/IAnimTarget;)V

    const/4 v0, 0x3

    .line 56
    new-array v1, v0, [Lmiuix/animation/property/FloatProperty;

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ROTATION_X:Lmiuix/animation/property/ViewProperty;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ROTATION_Y:Lmiuix/animation/property/ViewProperty;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v2, v1}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(F[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IAnimTarget;

    const/4 v1, 0x4

    .line 58
    new-array v1, v1, [Lmiuix/animation/property/FloatProperty;

    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v2, v1, v3

    sget-object v2, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v2, v1, v4

    sget-object v2, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    aput-object v2, v1, v5

    sget-object v2, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    aput-object v2, v1, v0

    const/high16 v0, 0x3b800000    # 0.00390625f

    invoke-virtual {p0, v0, v1}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(F[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IAnimTarget;

    .line 61
    new-array v0, v5, [Lmiuix/animation/property/FloatProperty;

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    aput-object v1, v0, v3

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    aput-object v1, v0, v4

    const v1, 0x3b03126f    # 0.002f

    invoke-virtual {p0, v1, v0}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(F[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IAnimTarget;

    return-void
.end method


# virtual methods
.method public allowAnimRun()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract clean()V
.end method

.method public executeOnInitialized(Ljava/lang/Runnable;)V
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDefaultMinVisible()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getId()I
    .locals 1

    .line 90
    iget v0, p0, Lmiuix/animation/IAnimTarget;->id:I

    return v0
.end method

.method public getIntValue(Lmiuix/animation/property/IIntValueProperty;)I
    .locals 1

    .line 173
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {p1, v0}, Lmiuix/animation/property/IIntValueProperty;->getIntValue(Ljava/lang/Object;)I

    move-result p1

    return p1

    :cond_0
    const p1, 0x7fffffff

    return p1
.end method

.method public getLocationOnScreen([I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 154
    aput v0, p1, v1

    aput v0, p1, v0

    return-void
.end method

.method public getMinVisibleChange(Ljava/lang/Object;)F
    .locals 1

    .line 108
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    .line 111
    :cond_0
    iget p1, p0, Lmiuix/animation/IAnimTarget;->mDefaultMinVisible:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    return p1

    .line 114
    :cond_1
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getDefaultMinVisible()F

    move-result p1

    return p1
.end method

.method public getNotifier()Lmiuix/animation/listener/ListenerNotifier;
    .locals 1

    .line 69
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->notifyManager:Lmiuix/animation/internal/NotifyManager;

    invoke-virtual {v0}, Lmiuix/animation/internal/NotifyManager;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object v0

    return-object v0
.end method

.method public abstract getTargetObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getThresholdVelocity(Lmiuix/animation/property/FloatProperty;)D
    .locals 2

    .line 192
    invoke-static {}, Lmiuix/animation/styles/PropertyStyle;->getVelocityThreshold()F

    move-result p1

    float-to-double v0, p1

    return-wide v0
.end method

.method public getValue(Lmiuix/animation/property/FloatProperty;)F
    .locals 1

    .line 158
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p1, v0}, Lmiuix/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

    move-result p1

    return p1

    :cond_0
    const p1, 0x7f7fffff    # Float.MAX_VALUE

    return p1
.end method

.method public getVelocity(Lmiuix/animation/property/FloatProperty;)D
    .locals 2

    .line 188
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/internal/AnimManager;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v0

    return-wide v0
.end method

.method public hasFlags(J)Z
    .locals 2

    .line 104
    iget-wide v0, p0, Lmiuix/animation/IAnimTarget;->mFlags:J

    invoke-static {v0, v1, p1, p2}, Lmiuix/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result p1

    return p1
.end method

.method public varargs isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z
    .locals 1

    .line 79
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v0, p1}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    move-result p1

    return p1
.end method

.method public isValid()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isValidFlag()Z
    .locals 4

    .line 99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lmiuix/animation/IAnimTarget;->mFlagsSetTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onFrameEnd(Z)V
    .locals 0

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 4

    .line 202
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    iget-wide v0, v0, Lmiuix/animation/internal/TargetHandler;->threadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 203
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    invoke-virtual {v0, p1}, Lmiuix/animation/internal/TargetHandler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public setDefaultMinVisibleChange(F)Lmiuix/animation/IAnimTarget;
    .locals 0

    .line 118
    iput p1, p0, Lmiuix/animation/IAnimTarget;->mDefaultMinVisible:F

    return-object p0
.end method

.method public setFlags(J)V
    .locals 0

    .line 94
    iput-wide p1, p0, Lmiuix/animation/IAnimTarget;->mFlags:J

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/animation/IAnimTarget;->mFlagsSetTime:J

    return-void
.end method

.method public setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V
    .locals 3

    .line 181
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 183
    invoke-interface {p1, v0, p2}, Lmiuix/animation/property/IIntValueProperty;->setIntValue(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public varargs setMinVisibleChange(F[Ljava/lang/String;)Lmiuix/animation/IAnimTarget;
    .locals 4

    .line 135
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 136
    new-instance v3, Lmiuix/animation/property/ValueProperty;

    invoke-direct {v3, v2}, Lmiuix/animation/property/ValueProperty;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(Ljava/lang/Object;F)Lmiuix/animation/IAnimTarget;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs setMinVisibleChange(F[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IAnimTarget;
    .locals 5

    .line 123
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 124
    iget-object v3, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setMinVisibleChange(Ljava/lang/Object;F)Lmiuix/animation/IAnimTarget;
    .locals 1

    .line 130
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setToNotify(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->notifyManager:Lmiuix/animation/internal/NotifyManager;

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/internal/NotifyManager;->setToNotify(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    return-void
.end method

.method public setValue(Lmiuix/animation/property/FloatProperty;F)V
    .locals 3

    .line 166
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {p1, v0, p2}, Lmiuix/animation/property/FloatProperty;->setValue(Ljava/lang/Object;F)V

    :cond_0
    return-void
.end method

.method public setVelocity(Lmiuix/animation/property/FloatProperty;D)V
    .locals 2

    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    double-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lmiuix/animation/internal/AnimManager;->setVelocity(Lmiuix/animation/property/FloatProperty;F)V

    :cond_0
    return-void
.end method

.method public shouldUseIntValue(Lmiuix/animation/property/FloatProperty;)Z
    .locals 0

    .line 218
    instance-of p1, p1, Lmiuix/animation/property/IIntValueProperty;

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IAnimTarget{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackVelocity(Lmiuix/animation/property/FloatProperty;D)V
    .locals 1

    .line 225
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mTracker:Lmiuix/animation/internal/TargetVelocityTracker;

    invoke-virtual {v0, p0, p1, p2, p3}, Lmiuix/animation/internal/TargetVelocityTracker;->trackVelocity(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)V

    return-void
.end method
