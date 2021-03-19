.class public Lmiuix/animation/internal/AnimRunner;
.super Ljava/lang/Object;
.source "AnimRunner.java"

# interfaces
.implements Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/internal/AnimRunner$Holder;
    }
.end annotation


# static fields
.field private static final sMainHandler:Landroid/os/Handler;

.field public static final sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

.field private static final sRunnerThread:Landroid/os/HandlerThread;


# instance fields
.field private volatile mAverageDelta:J

.field private mDeltaRecord:[J

.field private volatile mIsRunning:Z

.field private mLastFrameTime:J

.field private mRatio:F

.field private mRecordCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AnimRunnerThread"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerThread:Landroid/os/HandlerThread;

    .line 49
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v0, Lmiuix/animation/internal/RunnerHandler;

    sget-object v1, Lmiuix/animation/internal/AnimRunner;->sRunnerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/animation/internal/RunnerHandler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    .line 53
    new-instance v0, Lmiuix/animation/internal/AnimRunner$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/animation/internal/AnimRunner$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmiuix/animation/internal/AnimRunner;->sMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x10

    .line 94
    iput-wide v0, p0, Lmiuix/animation/internal/AnimRunner;->mAverageDelta:J

    const/4 v0, 0x5

    .line 96
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lmiuix/animation/internal/AnimRunner;->mDeltaRecord:[J

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lmiuix/animation/internal/AnimRunner;->mRecordCount:I

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method synthetic constructor <init>(Lmiuix/animation/internal/AnimRunner$1;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lmiuix/animation/internal/AnimRunner;-><init>()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 23
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->startAnimRunner()V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .line 23
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->endAnimation()V

    return-void
.end method

.method private average([J)J
    .locals 9

    .line 205
    array-length v0, p1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v4, v1

    move-wide v5, v2

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v7, p1, v1

    add-long/2addr v5, v7

    cmp-long v7, v7, v2

    if-lez v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez v4, :cond_2

    int-to-long v0, v4

    .line 209
    div-long v2, v5, v0

    :cond_2
    return-wide v2
.end method

.method private calculateAverageDelta(J)J
    .locals 5

    .line 179
    iget-object v0, p0, Lmiuix/animation/internal/AnimRunner;->mDeltaRecord:[J

    invoke-direct {p0, v0}, Lmiuix/animation/internal/AnimRunner;->average([J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    move-wide p1, v0

    :cond_0
    cmp-long v0, p1, v2

    const-wide/16 v1, 0x10

    if-eqz v0, :cond_1

    cmp-long v0, p1, v1

    if-lez v0, :cond_2

    :cond_1
    move-wide p1, v1

    :cond_2
    long-to-float p1, p1

    .line 184
    iget p2, p0, Lmiuix/animation/internal/AnimRunner;->mRatio:F

    div-float/2addr p1, p2

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-long p1, p1

    return-wide p1
.end method

.method private static endAnimation()V
    .locals 4

    .line 83
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v0

    .line 84
    iget-boolean v1, v0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    if-nez v1, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "AnimRunner.endAnimation"

    .line 88
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    :cond_1
    iput-boolean v2, v0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    .line 91
    invoke-static {}, Lmiuix/animation/physics/AnimationHandler;->getInstance()Lmiuix/animation/physics/AnimationHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/animation/physics/AnimationHandler;->removeCallback(Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;)V

    return-void
.end method

.method public static getInst()Lmiuix/animation/internal/AnimRunner;
    .locals 1

    .line 36
    sget-object v0, Lmiuix/animation/internal/AnimRunner$Holder;->inst:Lmiuix/animation/internal/AnimRunner;

    return-object v0
.end method

.method private static startAnimRunner()V
    .locals 4

    .line 70
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v0

    .line 71
    iget-boolean v1, v0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    if-eqz v1, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AnimRunner.start"

    const/4 v2, 0x0

    .line 75
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :cond_1
    invoke-static {}, Lmiuix/animation/Folme;->getTimeRatio()F

    move-result v1

    iput v1, v0, Lmiuix/animation/internal/AnimRunner;->mRatio:F

    const/4 v1, 0x1

    .line 78
    iput-boolean v1, v0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    .line 79
    invoke-static {}, Lmiuix/animation/physics/AnimationHandler;->getInstance()Lmiuix/animation/physics/AnimationHandler;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lmiuix/animation/physics/AnimationHandler;->addAnimationFrameCallback(Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;J)V

    return-void
.end method

.method private updateRunningTime(J)V
    .locals 5

    .line 189
    iget-wide v0, p0, Lmiuix/animation/internal/AnimRunner;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 190
    iput-wide p1, p0, Lmiuix/animation/internal/AnimRunner;->mLastFrameTime:J

    goto :goto_0

    :cond_0
    sub-long v2, p1, v0

    .line 194
    iput-wide p1, p0, Lmiuix/animation/internal/AnimRunner;->mLastFrameTime:J

    .line 196
    :goto_0
    iget p1, p0, Lmiuix/animation/internal/AnimRunner;->mRecordCount:I

    rem-int/lit8 p2, p1, 0x5

    .line 197
    iget-object v0, p0, Lmiuix/animation/internal/AnimRunner;->mDeltaRecord:[J

    aput-wide v2, v0, p2

    add-int/lit8 p1, p1, 0x1

    .line 198
    iput p1, p0, Lmiuix/animation/internal/AnimRunner;->mRecordCount:I

    .line 199
    invoke-direct {p0, v2, v3}, Lmiuix/animation/internal/AnimRunner;->calculateAverageDelta(J)J

    move-result-wide p1

    iput-wide p1, p0, Lmiuix/animation/internal/AnimRunner;->mAverageDelta:J

    return-void
.end method


# virtual methods
.method public varargs cancel(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V
    .locals 4

    .line 126
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    new-instance v1, Lmiuix/animation/internal/AnimOperationInfo;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, p2}, Lmiuix/animation/internal/AnimOperationInfo;-><init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/internal/RunnerHandler;->setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V

    return-void
.end method

.method public doAnimationFrame(J)Z
    .locals 4

    .line 106
    invoke-direct {p0, p1, p2}, Lmiuix/animation/internal/AnimRunner;->updateRunningTime(J)V

    .line 107
    iget-boolean p1, p0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    if-eqz p1, :cond_2

    .line 108
    sget-object p1, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lmiuix/animation/internal/RunnerHandler;->sendEmptyMessage(I)Z

    .line 109
    invoke-static {}, Lmiuix/animation/Folme;->getTargets()Ljava/util/Collection;

    move-result-object p1

    .line 110
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmiuix/animation/IAnimTarget;

    .line 111
    iget-object v0, p2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    const/4 v1, 0x0

    new-array v2, v1, [Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v0, v2}, Lmiuix/animation/internal/AnimManager;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object p2, p2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {p2}, Lmiuix/animation/internal/AnimManager;->runUpdate()V

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1

    .line 113
    invoke-virtual {p2, v2, v3}, Lmiuix/animation/IAnimTarget;->hasFlags(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 114
    new-array v0, v0, [Lmiuix/animation/IAnimTarget;

    aput-object p2, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_2
    iget-boolean p1, p0, Lmiuix/animation/internal/AnimRunner;->mIsRunning:Z

    return p1
.end method

.method end()V
    .locals 2

    .line 167
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 168
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->endAnimation()V

    goto :goto_0

    .line 170
    :cond_0
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public varargs end(Lmiuix/animation/IAnimTarget;[Ljava/lang/String;)V
    .locals 4

    .line 130
    invoke-static {p2}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p1, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    invoke-virtual {v0, v1}, Lmiuix/animation/internal/TargetHandler;->sendEmptyMessage(I)Z

    .line 133
    :cond_0
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    new-instance v2, Lmiuix/animation/internal/AnimOperationInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, p2, v3}, Lmiuix/animation/internal/AnimOperationInfo;-><init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {v0, v2}, Lmiuix/animation/internal/RunnerHandler;->setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V

    return-void
.end method

.method public varargs end(Lmiuix/animation/IAnimTarget;[Lmiuix/animation/property/FloatProperty;)V
    .locals 4

    .line 137
    invoke-static {p2}, Lmiuix/animation/utils/CommonUtils;->isArrayEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p1, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    invoke-virtual {v0, v1}, Lmiuix/animation/internal/TargetHandler;->sendEmptyMessage(I)Z

    .line 140
    :cond_0
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sRunnerHandler:Lmiuix/animation/internal/RunnerHandler;

    new-instance v2, Lmiuix/animation/internal/AnimOperationInfo;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, v3, p2}, Lmiuix/animation/internal/AnimOperationInfo;-><init>(Lmiuix/animation/IAnimTarget;B[Ljava/lang/String;[Lmiuix/animation/property/FloatProperty;)V

    invoke-virtual {v0, v2}, Lmiuix/animation/internal/RunnerHandler;->setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V

    return-void
.end method

.method public getAverageDelta()J
    .locals 2

    .line 175
    iget-wide v0, p0, Lmiuix/animation/internal/AnimRunner;->mAverageDelta:J

    return-wide v0
.end method

.method public run(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 1

    .line 145
    new-instance v0, Lmiuix/animation/internal/TransitionInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lmiuix/animation/internal/TransitionInfo;-><init>(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V

    .line 146
    invoke-virtual {p0, v0}, Lmiuix/animation/internal/AnimRunner;->run(Lmiuix/animation/internal/TransitionInfo;)V

    return-void
.end method

.method public run(Lmiuix/animation/internal/TransitionInfo;)V
    .locals 2

    .line 150
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    new-instance v1, Lmiuix/animation/internal/AnimRunner$2;

    invoke-direct {v1, p0, p1}, Lmiuix/animation/internal/AnimRunner$2;-><init>(Lmiuix/animation/internal/AnimRunner;Lmiuix/animation/internal/TransitionInfo;)V

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->executeOnInitialized(Ljava/lang/Runnable;)V

    return-void
.end method

.method start()V
    .locals 2

    .line 159
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 160
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->startAnimRunner()V

    goto :goto_0

    .line 162
    :cond_0
    sget-object v0, Lmiuix/animation/internal/AnimRunner;->sMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
