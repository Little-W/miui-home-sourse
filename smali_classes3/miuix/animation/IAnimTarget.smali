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

.field mShouldCheckValue:Z

.field final mTracker:Lmiuix/animation/internal/TargetVelocityTracker;

.field notifyManager:Lmiuix/animation/internal/NotifyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lmiuix/animation/IAnimTarget;->sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lmiuix/animation/internal/TargetHandler;

    invoke-direct {v0, p0}, Lmiuix/animation/internal/TargetHandler;-><init>(Lmiuix/animation/IAnimTarget;)V

    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    .line 35
    new-instance v0, Lmiuix/animation/internal/AnimManager;

    invoke-direct {v0}, Lmiuix/animation/internal/AnimManager;-><init>()V

    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 39
    new-instance v0, Lmiuix/animation/internal/NotifyManager;

    invoke-direct {v0, p0}, Lmiuix/animation/internal/NotifyManager;-><init>(Lmiuix/animation/IAnimTarget;)V

    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->notifyManager:Lmiuix/animation/internal/NotifyManager;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 43
    iput v0, p0, Lmiuix/animation/IAnimTarget;->mDefaultMinVisible:F

    .line 45
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lmiuix/animation/IAnimTarget;->mShouldCheckValue:Z

    .line 53
    sget-object v1, Lmiuix/animation/IAnimTarget;->sTargetIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    iput v1, p0, Lmiuix/animation/IAnimTarget;->id:I

    .line 55
    new-instance v1, Lmiuix/animation/internal/TargetVelocityTracker;

    invoke-direct {v1}, Lmiuix/animation/internal/TargetVelocityTracker;-><init>()V

    iput-object v1, p0, Lmiuix/animation/IAnimTarget;->mTracker:Lmiuix/animation/internal/TargetVelocityTracker;

    .line 58
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "IAnimTarget create ! "

    .line 59
    invoke-static {v3, v1}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_0
    iget-object v1, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v1, p0}, Lmiuix/animation/internal/AnimManager;->setTarget(Lmiuix/animation/IAnimTarget;)V

    const v1, 0x3dcccccd    # 0.1f

    const/4 v3, 0x3

    new-array v4, v3, [Lmiuix/animation/property/FloatProperty;

    .line 62
    sget-object v5, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    aput-object v5, v4, v2

    sget-object v5, Lmiuix/animation/property/ViewProperty;->ROTATION_X:Lmiuix/animation/property/ViewProperty;

    aput-object v5, v4, v0

    sget-object v5, Lmiuix/animation/property/ViewProperty;->ROTATION_Y:Lmiuix/animation/property/ViewProperty;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {p0, v1, v4}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(F[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IAnimTarget;

    const/high16 v1, 0x3b800000    # 0.00390625f

    const/4 v4, 0x4

    new-array v4, v4, [Lmiuix/animation/property/FloatProperty;

    .line 64
    sget-object v5, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v5, v4, v2

    sget-object v5, Lmiuix/animation/property/ViewProperty;->AUTO_ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v5, v4, v0

    sget-object v5, Lmiuix/animation/property/ViewPropertyExt;->FOREGROUND:Lmiuix/animation/property/ViewPropertyExt$ForegroundProperty;

    aput-object v5, v4, v6

    sget-object v5, Lmiuix/animation/property/ViewPropertyExt;->BACKGROUND:Lmiuix/animation/property/ViewPropertyExt$BackgroundProperty;

    aput-object v5, v4, v3

    invoke-virtual {p0, v1, v4}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(F[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IAnimTarget;

    const v1, 0x3b03126f    # 0.002f

    new-array v3, v6, [Lmiuix/animation/property/FloatProperty;

    .line 67
    sget-object v4, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    aput-object v4, v3, v2

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    aput-object v2, v3, v0

    invoke-virtual {p0, v1, v3}, Lmiuix/animation/IAnimTarget;->setMinVisibleChange(F[Lmiuix/animation/property/FloatProperty;)Lmiuix/animation/IAnimTarget;

    return-void
.end method


# virtual methods
.method public allowAnimRun()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract clean()V
.end method

.method public enableCheckValue(Z)V
    .locals 0

    .line 249
    iput-boolean p1, p0, Lmiuix/animation/IAnimTarget;->mShouldCheckValue:Z

    return-void
.end method

.method public executeOnInitialized(Ljava/lang/Runnable;)V
    .locals 0

    .line 149
    invoke-virtual {p0, p1}, Lmiuix/animation/IAnimTarget;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 242
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "IAnimTarget was destroyed \uff01"

    .line 243
    invoke-static {v1, v0}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getDefaultMinVisible()F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getId()I
    .locals 0

    .line 97
    iget p0, p0, Lmiuix/animation/IAnimTarget;->id:I

    return p0
.end method

.method public getIntValue(Lmiuix/animation/property/IIntValueProperty;)I
    .locals 0

    .line 180
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 182
    invoke-interface {p1, p0}, Lmiuix/animation/property/IIntValueProperty;->getIntValue(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7fffffff

    return p0
.end method

.method public getLocationOnScreen([I)V
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 161
    aput p0, p1, v0

    aput p0, p1, p0

    return-void
.end method

.method public getMinVisibleChange(Ljava/lang/Object;)F
    .locals 1

    .line 115
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_0

    .line 117
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    .line 118
    :cond_0
    iget p1, p0, Lmiuix/animation/IAnimTarget;->mDefaultMinVisible:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    return p1

    .line 121
    :cond_1
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getDefaultMinVisible()F

    move-result p0

    return p0
.end method

.method public getNotifier()Lmiuix/animation/listener/ListenerNotifier;
    .locals 0

    .line 75
    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->notifyManager:Lmiuix/animation/internal/NotifyManager;

    invoke-virtual {p0}, Lmiuix/animation/internal/NotifyManager;->getNotifier()Lmiuix/animation/listener/ListenerNotifier;

    move-result-object p0

    return-object p0
.end method

.method public abstract getTargetObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getThresholdVelocity(Lmiuix/animation/property/FloatProperty;)D
    .locals 0

    .line 199
    invoke-static {}, Lmiuix/animation/styles/PropertyStyle;->getVelocityThreshold()F

    move-result p0

    float-to-double p0, p0

    return-wide p0
.end method

.method public getValue(Lmiuix/animation/property/FloatProperty;)F
    .locals 0

    .line 165
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 167
    invoke-virtual {p1, p0}, Lmiuix/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

    move-result p0

    return p0

    :cond_0
    const p0, 0x7f7fffff    # Float.MAX_VALUE

    return p0
.end method

.method public getVelocity(Lmiuix/animation/property/FloatProperty;)D
    .locals 0

    .line 195
    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimManager;->getVelocity(Lmiuix/animation/property/FloatProperty;)D

    move-result-wide p0

    return-wide p0
.end method

.method public hasFlags(J)Z
    .locals 2

    .line 111
    iget-wide v0, p0, Lmiuix/animation/IAnimTarget;->mFlags:J

    invoke-static {v0, v1, p1, p2}, Lmiuix/animation/utils/CommonUtils;->hasFlags(JJ)Z

    move-result p0

    return p0
.end method

.method public varargs isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z
    .locals 0

    .line 86
    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {p0, p1}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    move-result p0

    return p0
.end method

.method public isValid()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isValidFlag()Z
    .locals 4

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lmiuix/animation/IAnimTarget;->mFlagsSetTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onFrameEnd(Z)V
    .locals 0

    return-void
.end method

.method public post(Ljava/lang/Runnable;)V
    .locals 4

    .line 209
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    iget-wide v0, v0, Lmiuix/animation/internal/TargetHandler;->threadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 210
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 212
    :cond_0
    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    invoke-virtual {p0, p1}, Lmiuix/animation/internal/TargetHandler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public setDefaultMinVisibleChange(F)Lmiuix/animation/IAnimTarget;
    .locals 0

    .line 125
    iput p1, p0, Lmiuix/animation/IAnimTarget;->mDefaultMinVisible:F

    return-object p0
.end method

.method public setFlags(J)V
    .locals 0

    .line 101
    iput-wide p1, p0, Lmiuix/animation/IAnimTarget;->mFlags:J

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/animation/IAnimTarget;->mFlagsSetTime:J

    return-void
.end method

.method public setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V
    .locals 2

    .line 188
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 189
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    .line 190
    invoke-interface {p1, p0, p2}, Lmiuix/animation/property/IIntValueProperty;->setIntValue(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public varargs setMinVisibleChange(F[Ljava/lang/String;)Lmiuix/animation/IAnimTarget;
    .locals 4

    .line 142
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 143
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

    .line 130
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 131
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

    .line 137
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mMinVisibleChanges:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setToNotify(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 0

    .line 82
    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->notifyManager:Lmiuix/animation/internal/NotifyManager;

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/internal/NotifyManager;->setToNotify(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    return-void
.end method

.method public setValue(Lmiuix/animation/property/FloatProperty;F)V
    .locals 2

    .line 173
    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 174
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p1, p0, p2}, Lmiuix/animation/property/FloatProperty;->setValue(Ljava/lang/Object;F)V

    :cond_0
    return-void
.end method

.method public setVelocity(Lmiuix/animation/property/FloatProperty;D)V
    .locals 2

    const-wide v0, 0x47efffffe0000000L    # 3.4028234663852886E38

    cmpl-double v0, p2, v0

    if-eqz v0, :cond_0

    .line 204
    iget-object p0, p0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    double-to-float p2, p2

    invoke-virtual {p0, p1, p2}, Lmiuix/animation/internal/AnimManager;->setVelocity(Lmiuix/animation/property/FloatProperty;F)V

    :cond_0
    return-void
.end method

.method public shouldCheckValue()Z
    .locals 0

    .line 253
    iget-boolean p0, p0, Lmiuix/animation/IAnimTarget;->mShouldCheckValue:Z

    return p0
.end method

.method public shouldUseIntValue(Lmiuix/animation/property/FloatProperty;)Z
    .locals 0

    .line 225
    instance-of p0, p1, Lmiuix/animation/property/IIntValueProperty;

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IAnimTarget{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiuix/animation/IAnimTarget;->getTargetObject()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public trackVelocity(Lmiuix/animation/property/FloatProperty;D)V
    .locals 1

    .line 232
    iget-object v0, p0, Lmiuix/animation/IAnimTarget;->mTracker:Lmiuix/animation/internal/TargetVelocityTracker;

    invoke-virtual {v0, p0, p1, p2, p3}, Lmiuix/animation/internal/TargetVelocityTracker;->trackVelocity(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;D)V

    return-void
.end method
