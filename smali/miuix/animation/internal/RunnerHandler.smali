.class Lmiuix/animation/internal/RunnerHandler;
.super Landroid/os/Handler;
.source "RunnerHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/animation/internal/RunnerHandler$SetToInfo;
    }
.end annotation


# instance fields
.field private final mDelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/IAnimTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameCount:I

.field private mIsTaskRunning:Z

.field private mLastRun:J

.field private final mOpMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/animation/IAnimTarget;",
            "Lmiuix/animation/internal/AnimOperationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnerStart:Z

.field private final mSplitInfo:[I

.field private mStart:Z

.field private final mTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/internal/AnimTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalT:J

.field private final mTransList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lmiuix/animation/IAnimTarget;",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final runningTarget:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lmiuix/animation/IAnimTarget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    .line 62
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    .line 37
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mOpMap:Ljava/util/Map;

    .line 44
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mTransMap:Ljava/util/Map;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    .line 46
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mDelList:Ljava/util/List;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mTransList:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 52
    iput-wide v0, p0, Lmiuix/animation/internal/RunnerHandler;->mLastRun:J

    .line 53
    iput-wide v0, p0, Lmiuix/animation/internal/RunnerHandler;->mTotalT:J

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lmiuix/animation/internal/RunnerHandler;->mFrameCount:I

    const/4 p1, 0x2

    .line 59
    new-array p1, p1, [I

    iput-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mSplitInfo:[I

    return-void
.end method

.method private addAnimTask(Ljava/util/List;II)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;II)V"
        }
    .end annotation

    .line 344
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    .line 345
    iget-object v0, v0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/internal/AnimTask;

    .line 346
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->getTaskOfMinCount()Lmiuix/animation/internal/AnimTask;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 347
    iget-object v3, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, p3, :cond_1

    .line 348
    invoke-virtual {v2}, Lmiuix/animation/internal/AnimTask;->getTotalAnimCount()I

    move-result v3

    invoke-virtual {v1}, Lmiuix/animation/internal/AnimTask;->getAnimCount()I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, p2, :cond_1

    goto :goto_1

    .line 351
    :cond_1
    invoke-virtual {v2, v1}, Lmiuix/animation/internal/AnimTask;->addToTail(Lmiuix/animation/utils/LinkNode;)V

    goto :goto_0

    .line 349
    :cond_2
    :goto_1
    iget-object v2, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method private addToMap(Lmiuix/animation/IAnimTarget;Lmiuix/animation/utils/LinkNode;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lmiuix/animation/utils/LinkNode;",
            ">(",
            "Lmiuix/animation/IAnimTarget;",
            "TT;",
            "Ljava/util/Map<",
            "Lmiuix/animation/IAnimTarget;",
            "TT;>;)V"
        }
    .end annotation

    .line 149
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/utils/LinkNode;

    if-nez v0, :cond_0

    .line 151
    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {v0, p2}, Lmiuix/animation/utils/LinkNode;->addToTail(Lmiuix/animation/utils/LinkNode;)V

    :goto_0
    return-void
.end method

.method private static doSetOperation(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;Lmiuix/animation/internal/AnimOperationInfo;)V
    .locals 5

    .line 293
    iget-object v0, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v0, v0, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 294
    invoke-static {v0}, Lmiuix/animation/internal/AnimTask;->isRunning(B)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-byte v1, p3, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    if-eqz v1, :cond_4

    iget-object v1, p3, Lmiuix/animation/internal/AnimOperationInfo;->propList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p3, Lmiuix/animation/internal/AnimOperationInfo;->propList:Ljava/util/List;

    iget-object v2, p2, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 296
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v1, v1, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 297
    invoke-static {v1}, Lmiuix/animation/internal/AnimTask;->isRunning(B)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 298
    iget v1, p3, Lmiuix/animation/internal/AnimOperationInfo;->usedCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p3, Lmiuix/animation/internal/AnimOperationInfo;->usedCount:I

    .line 299
    iget-byte v1, p3, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 300
    iget-object v1, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v1, v1, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    .line 301
    iget-object v1, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-object v2, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-wide v2, v2, Lmiuix/animation/internal/AnimInfo;->targetValue:D

    iput-wide v2, v1, Lmiuix/animation/internal/AnimInfo;->value:D

    .line 303
    :cond_1
    iget-object v1, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v2, v1, Lmiuix/animation/internal/AnimStats;->endCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmiuix/animation/internal/AnimStats;->endCount:I

    .line 304
    iget v1, p1, Lmiuix/animation/internal/AnimStats;->endCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lmiuix/animation/internal/AnimStats;->endCount:I

    goto :goto_0

    .line 305
    :cond_2
    iget-byte v1, p3, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 306
    iget-object v1, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v2, v1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 307
    iget v1, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 309
    :cond_3
    :goto_0
    iget-byte p3, p3, Lmiuix/animation/internal/AnimOperationInfo;->op:B

    invoke-virtual {p2, p3}, Lmiuix/animation/listener/UpdateInfo;->setOp(B)V

    .line 310
    invoke-static {p0, p1, p2, v0}, Lmiuix/animation/internal/TransitionInfo;->decreaseStartCountForDelayAnim(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;B)V

    :cond_4
    return-void
.end method

.method private doSetup()V
    .locals 4

    .line 379
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->mTransMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/internal/TransitionInfo;

    .line 380
    iget-object v2, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    iget-object v3, v1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_0
    iget-object v2, v1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v2, v2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v2, v1}, Lmiuix/animation/internal/AnimManager;->setupTransition(Lmiuix/animation/internal/TransitionInfo;)V

    .line 384
    invoke-virtual {v1}, Lmiuix/animation/internal/TransitionInfo;->remove()Lmiuix/animation/utils/LinkNode;

    move-result-object v1

    check-cast v1, Lmiuix/animation/internal/TransitionInfo;

    if-nez v1, :cond_0

    goto :goto_0

    .line 387
    :cond_1
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->mTransMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 388
    iget-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mRunnerStart:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 389
    iput-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mRunnerStart:Z

    .line 390
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/internal/AnimRunner;->start()V

    :cond_2
    return-void
.end method

.method private getTaskOfMinCount()Lmiuix/animation/internal/AnimTask;
    .locals 5

    .line 360
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/internal/AnimTask;

    .line 361
    invoke-virtual {v3}, Lmiuix/animation/internal/AnimTask;->getTotalAnimCount()I

    move-result v4

    if-ge v4, v2, :cond_0

    move-object v1, v3

    move v2, v4

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getTotalAnimCount()I
    .locals 3

    .line 372
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/IAnimTarget;

    .line 373
    iget-object v2, v2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    invoke-virtual {v2}, Lmiuix/animation/internal/AnimManager;->getTotalAnimCount()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static handleSetTo(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;)Z
    .locals 3

    .line 279
    invoke-static {p2}, Lmiuix/animation/internal/AnimValueUtils;->handleSetToValue(Lmiuix/animation/listener/UpdateInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 282
    :cond_0
    iget-object v0, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v0, v0, Lmiuix/animation/internal/AnimInfo;->op:B

    invoke-static {v0}, Lmiuix/animation/internal/AnimTask;->isRunning(B)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lmiuix/animation/internal/AnimTask;->animStats:Lmiuix/animation/internal/AnimStats;

    iget v2, v0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    add-int/2addr v2, v1

    iput v2, v0, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    .line 284
    iget v0, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    add-int/2addr v0, v1

    iput v0, p1, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    const/4 v0, 0x4

    .line 285
    invoke-virtual {p2, v0}, Lmiuix/animation/listener/UpdateInfo;->setOp(B)V

    .line 286
    iget-object v0, p2, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iget-byte v0, v0, Lmiuix/animation/internal/AnimInfo;->op:B

    invoke-static {p0, p1, p2, v0}, Lmiuix/animation/internal/TransitionInfo;->decreaseStartCountForDelayAnim(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;B)V

    :cond_1
    return v1
.end method

.method private static handleUpdate(Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/internal/AnimOperationInfo;Lmiuix/animation/internal/AnimStats;)V
    .locals 8

    .line 259
    iget-object v0, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v0, v0, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v0, v0, Lmiuix/animation/internal/AnimManager;->mStartAnim:Ljava/util/Set;

    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 260
    iget-object v1, p0, Lmiuix/animation/internal/TransitionInfo;->animTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/internal/AnimTask;

    .line 261
    iget-object v3, p0, Lmiuix/animation/internal/TransitionInfo;->updateList:Ljava/util/List;

    .line 262
    iget v4, v2, Lmiuix/animation/internal/AnimTask;->startPos:I

    invoke-virtual {v2}, Lmiuix/animation/internal/AnimTask;->getAnimCount()I

    move-result v5

    add-int/2addr v5, v4

    :goto_0
    if-ge v4, v5, :cond_0

    .line 263
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/animation/listener/UpdateInfo;

    .line 264
    invoke-static {v2, p2, v6}, Lmiuix/animation/internal/RunnerHandler;->handleSetTo(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;)Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 265
    invoke-static {v2, p2, v6, p1}, Lmiuix/animation/internal/RunnerHandler;->doSetOperation(Lmiuix/animation/internal/AnimTask;Lmiuix/animation/internal/AnimStats;Lmiuix/animation/listener/UpdateInfo;Lmiuix/animation/internal/AnimOperationInfo;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {p2}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p2, Lmiuix/animation/internal/AnimStats;->updateCount:I

    if-lez p1, :cond_3

    iget-object p1, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object p1, p1, Lmiuix/animation/internal/AnimManager;->mStartAnim:Ljava/util/Set;

    iget-object p2, p0, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    .line 270
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 271
    sget-object p1, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    iget p2, p0, Lmiuix/animation/internal/TransitionInfo;->id:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object p1, p0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->handler:Lmiuix/animation/internal/TargetHandler;

    iget p0, p0, Lmiuix/animation/internal/TransitionInfo;->id:I

    const/4 p2, 0x0

    .line 273
    invoke-virtual {p1, p2, p0, p2}, Lmiuix/animation/internal/TargetHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 274
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void
.end method

.method private isInfoInTransMap(Lmiuix/animation/internal/TransitionInfo;)Z
    .locals 2

    .line 205
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->mTransMap:Ljava/util/Map;

    iget-object v1, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    :goto_0
    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 210
    :cond_0
    iget-object v0, v0, Lmiuix/animation/internal/TransitionInfo;->next:Lmiuix/animation/utils/LinkNode;

    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private onSetTo(Lmiuix/animation/internal/RunnerHandler$SetToInfo;)V
    .locals 6

    .line 124
    iget-object v0, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    instance-of v0, v0, Lmiuix/animation/ViewTarget;

    .line 125
    iget-object v1, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    invoke-virtual {v1}, Lmiuix/animation/controller/AnimState;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 126
    iget-object v3, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    invoke-virtual {v3, v2}, Lmiuix/animation/controller/AnimState;->getProperty(Ljava/lang/Object;)Lmiuix/animation/property/FloatProperty;

    move-result-object v2

    .line 127
    iget-object v3, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v3, v3, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v3, v3, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiuix/animation/listener/UpdateInfo;

    .line 128
    iget-object v4, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    iget-object v5, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v4, v5, v2}, Lmiuix/animation/controller/AnimState;->get(Lmiuix/animation/IAnimTarget;Lmiuix/animation/property/FloatProperty;)D

    move-result-wide v4

    if-eqz v3, :cond_1

    .line 130
    iget-object v2, v3, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    iput-wide v4, v2, Lmiuix/animation/internal/AnimInfo;->setToValue:D

    if-nez v0, :cond_0

    .line 132
    iget-object v2, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-virtual {v3, v2}, Lmiuix/animation/listener/UpdateInfo;->setTargetValue(Lmiuix/animation/IAnimTarget;)V

    goto :goto_0

    .line 135
    :cond_1
    instance-of v3, v2, Lmiuix/animation/property/IIntValueProperty;

    if-eqz v3, :cond_2

    .line 136
    iget-object v3, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    check-cast v2, Lmiuix/animation/property/IIntValueProperty;

    double-to-int v4, v4

    invoke-virtual {v3, v2, v4}, Lmiuix/animation/IAnimTarget;->setIntValue(Lmiuix/animation/property/IIntValueProperty;I)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v3, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    double-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Lmiuix/animation/IAnimTarget;->setValue(Lmiuix/animation/property/FloatProperty;F)V

    goto :goto_0

    .line 142
    :cond_3
    iget-object v0, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    const/4 v1, 0x0

    new-array v1, v1, [Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 143
    iget-object p1, p1, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object p1, p1, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_4
    return-void
.end method

.method private runAnim(JJ)V
    .locals 4

    .line 315
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->stopAnimRunner()V

    return-void

    .line 319
    :cond_0
    iput-wide p1, p0, Lmiuix/animation/internal/RunnerHandler;->mLastRun:J

    .line 320
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/animation/internal/AnimRunner;->getAverageDelta()J

    move-result-wide p1

    .line 321
    iget v0, p0, Lmiuix/animation/internal/RunnerHandler;->mFrameCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-wide/16 v2, 0x2

    mul-long/2addr v2, p1

    cmp-long v0, p3, v2

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide p1, p3

    .line 324
    :goto_0
    iget-wide p3, p0, Lmiuix/animation/internal/RunnerHandler;->mTotalT:J

    add-long/2addr p3, p1

    iput-wide p3, p0, Lmiuix/animation/internal/RunnerHandler;->mTotalT:J

    .line 325
    iget p3, p0, Lmiuix/animation/internal/RunnerHandler;->mFrameCount:I

    add-int/2addr p3, v1

    iput p3, p0, Lmiuix/animation/internal/RunnerHandler;->mFrameCount:I

    .line 326
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->getTotalAnimCount()I

    move-result p3

    .line 327
    iget-object p4, p0, Lmiuix/animation/internal/RunnerHandler;->mSplitInfo:[I

    invoke-static {p3, p4}, Lmiuix/animation/internal/ThreadPoolUtil;->getSplitCount(I[I)V

    .line 328
    iget-object p3, p0, Lmiuix/animation/internal/RunnerHandler;->mSplitInfo:[I

    const/4 p4, 0x0

    aget p4, p3, p4

    .line 329
    aget p3, p3, v1

    .line 330
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/IAnimTarget;

    .line 331
    iget-object v2, v2, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object v3, p0, Lmiuix/animation/internal/RunnerHandler;->mTransList:Ljava/util/List;

    invoke-virtual {v2, v3}, Lmiuix/animation/internal/AnimManager;->getTransitionInfos(Ljava/util/List;)V

    goto :goto_1

    .line 333
    :cond_2
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->mTransList:Ljava/util/List;

    invoke-direct {p0, v0, p3, p4}, Lmiuix/animation/internal/RunnerHandler;->addAnimTask(Ljava/util/List;II)V

    .line 334
    iget-object p3, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    xor-int/2addr p3, v1

    iput-boolean p3, p0, Lmiuix/animation/internal/RunnerHandler;->mIsTaskRunning:Z

    .line 335
    sget-object p3, Lmiuix/animation/internal/AnimTask;->sTaskCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p4, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 336
    iget-object p3, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lmiuix/animation/internal/AnimTask;

    .line 337
    iget-wide v0, p0, Lmiuix/animation/internal/RunnerHandler;->mTotalT:J

    invoke-virtual {p4, v0, v1, p1, p2}, Lmiuix/animation/internal/AnimTask;->start(JJ)V

    goto :goto_2

    .line 339
    :cond_3
    iget-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mTransList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 340
    iget-object p1, p0, Lmiuix/animation/internal/RunnerHandler;->mTaskList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-void
.end method

.method private setupWaitTrans(Lmiuix/animation/IAnimTarget;)Z
    .locals 2

    .line 196
    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget-object p1, p1, Lmiuix/animation/internal/AnimManager;->mWaitState:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmiuix/animation/internal/TransitionInfo;

    if-eqz p1, :cond_0

    .line 198
    iget-object v0, p1, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v1, p0, Lmiuix/animation/internal/RunnerHandler;->mTransMap:Ljava/util/Map;

    invoke-direct {p0, v0, p1, v1}, Lmiuix/animation/internal/RunnerHandler;->addToMap(Lmiuix/animation/IAnimTarget;Lmiuix/animation/utils/LinkNode;Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private stopAnimRunner()V
    .locals 6

    .line 158
    iget-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mStart:Z

    if-eqz v0, :cond_1

    .line 159
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "RunnerHandler.stopAnimRunner"

    const/4 v2, 0x2

    .line 160
    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lmiuix/animation/internal/RunnerHandler;->mTotalT:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "frame count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lmiuix/animation/internal/RunnerHandler;->mFrameCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    :cond_0
    iput-boolean v1, p0, Lmiuix/animation/internal/RunnerHandler;->mStart:Z

    .line 166
    iput-boolean v1, p0, Lmiuix/animation/internal/RunnerHandler;->mRunnerStart:Z

    const-wide/16 v2, 0x0

    .line 167
    iput-wide v2, p0, Lmiuix/animation/internal/RunnerHandler;->mTotalT:J

    .line 168
    iput v1, p0, Lmiuix/animation/internal/RunnerHandler;->mFrameCount:I

    .line 169
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/animation/internal/AnimRunner;->end()V

    :cond_1
    return-void
.end method

.method private updateAnim()V
    .locals 5

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mIsTaskRunning:Z

    .line 176
    iget-object v1, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/IAnimTarget;

    .line 177
    iget-object v4, p0, Lmiuix/animation/internal/RunnerHandler;->mTransList:Ljava/util/List;

    invoke-direct {p0, v2, v4}, Lmiuix/animation/internal/RunnerHandler;->updateTarget(Lmiuix/animation/IAnimTarget;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v2}, Lmiuix/animation/internal/RunnerHandler;->setupWaitTrans(Lmiuix/animation/IAnimTarget;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 180
    :cond_0
    iget-object v3, p0, Lmiuix/animation/internal/RunnerHandler;->mDelList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    :goto_1
    move v0, v3

    .line 182
    :goto_2
    iget-object v2, p0, Lmiuix/animation/internal/RunnerHandler;->mTransList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 184
    :cond_2
    iget-object v1, p0, Lmiuix/animation/internal/RunnerHandler;->runningTarget:Ljava/util/Set;

    iget-object v2, p0, Lmiuix/animation/internal/RunnerHandler;->mDelList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 185
    iget-object v1, p0, Lmiuix/animation/internal/RunnerHandler;->mDelList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 186
    iget-object v1, p0, Lmiuix/animation/internal/RunnerHandler;->mTransMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 187
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->doSetup()V

    move v0, v3

    :cond_3
    if-nez v0, :cond_4

    .line 191
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->stopAnimRunner()V

    :cond_4
    return-void
.end method

.method private updateTarget(Lmiuix/animation/IAnimTarget;Ljava/util/List;)Z
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmiuix/animation/IAnimTarget;",
            "Ljava/util/List<",
            "Lmiuix/animation/internal/TransitionInfo;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 216
    iget-object v2, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Lmiuix/animation/internal/AnimManager;->getTransitionInfos(Ljava/util/List;)V

    .line 219
    iget-object v2, v0, Lmiuix/animation/internal/RunnerHandler;->mOpMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/animation/internal/AnimOperationInfo;

    .line 220
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiuix/animation/internal/TransitionInfo;

    .line 221
    invoke-direct {v0, v8}, Lmiuix/animation/internal/RunnerHandler;->isInfoInTransMap(Lmiuix/animation/internal/TransitionInfo;)Z

    move-result v10

    if-eqz v10, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 226
    iget-wide v11, v8, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    iget-wide v13, v2, Lmiuix/animation/internal/AnimOperationInfo;->sendTime:J

    cmp-long v11, v11, v13

    if-lez v11, :cond_1

    add-int/lit8 v6, v6, 0x1

    move v11, v6

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move v11, v6

    move-object v6, v2

    .line 230
    :goto_1
    invoke-virtual {v8}, Lmiuix/animation/internal/TransitionInfo;->getAnimStats()Lmiuix/animation/internal/AnimStats;

    move-result-object v12

    .line 231
    invoke-virtual {v12}, Lmiuix/animation/internal/AnimStats;->isStarted()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 232
    invoke-static {v8, v6, v12}, Lmiuix/animation/internal/RunnerHandler;->handleUpdate(Lmiuix/animation/internal/TransitionInfo;Lmiuix/animation/internal/AnimOperationInfo;Lmiuix/animation/internal/AnimStats;)V

    .line 234
    :cond_2
    invoke-static {}, Lmiuix/animation/utils/LogUtils;->isLogEnabled()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 235
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "---- updateAnim, target = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "key = "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v8, Lmiuix/animation/internal/TransitionInfo;->key:Ljava/lang/Object;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v14, v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "useOp = "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "info.startTime = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v8, Lmiuix/animation/internal/TransitionInfo;->startTime:J

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v14, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "opInfo.time = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_3

    iget-wide v9, v2, Lmiuix/animation/internal/AnimOperationInfo;->sendTime:J

    .line 239
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_2

    :cond_3
    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x3

    aput-object v6, v14, v9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "stats.isRunning = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v12}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v16, 0x4

    aput-object v6, v14, v16

    const/4 v6, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "stats = "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v14, v6

    .line 235
    invoke-static {v13, v14}, Lmiuix/animation/utils/LogUtils;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    const/4 v9, 0x3

    const/16 v16, 0x4

    .line 244
    :goto_3
    invoke-virtual {v12}, Lmiuix/animation/internal/AnimStats;->isRunning()Z

    move-result v6

    if-nez v6, :cond_6

    .line 245
    iget-object v6, v1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    iget v10, v12, Lmiuix/animation/internal/AnimStats;->cancelCount:I

    iget v12, v12, Lmiuix/animation/internal/AnimStats;->endCount:I

    if-le v10, v12, :cond_5

    move/from16 v9, v16

    :cond_5
    const/4 v10, 0x2

    invoke-virtual {v6, v8, v10, v9}, Lmiuix/animation/internal/AnimManager;->notifyTransitionEnd(Lmiuix/animation/internal/TransitionInfo;II)V

    goto :goto_4

    :cond_6
    add-int/lit8 v7, v7, 0x1

    :goto_4
    move v6, v11

    goto/16 :goto_0

    :cond_7
    if-eqz v2, :cond_9

    .line 251
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    if-eq v6, v4, :cond_8

    invoke-virtual {v2}, Lmiuix/animation/internal/AnimOperationInfo;->isUsed()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 252
    :cond_8
    iget-object v2, v0, Lmiuix/animation/internal/RunnerHandler;->mOpMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->clear()V

    if-lez v7, :cond_a

    move v5, v9

    :cond_a
    return v5
.end method


# virtual methods
.method public addSetToState(Lmiuix/animation/IAnimTarget;Lmiuix/animation/controller/AnimState;)V
    .locals 2

    .line 73
    new-instance v0, Lmiuix/animation/internal/RunnerHandler$SetToInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmiuix/animation/internal/RunnerHandler$SetToInfo;-><init>(Lmiuix/animation/internal/RunnerHandler$1;)V

    .line 74
    iput-object p1, v0, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->target:Lmiuix/animation/IAnimTarget;

    .line 75
    iget-boolean p1, p2, Lmiuix/animation/controller/AnimState;->isTemporary:Z

    if-eqz p1, :cond_0

    .line 76
    new-instance p1, Lmiuix/animation/controller/AnimState;

    invoke-direct {p1}, Lmiuix/animation/controller/AnimState;-><init>()V

    iput-object p1, v0, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    .line 77
    iget-object p1, v0, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    invoke-virtual {p1, p2}, Lmiuix/animation/controller/AnimState;->set(Lmiuix/animation/controller/AnimState;)V

    goto :goto_0

    .line 79
    :cond_0
    iput-object p2, v0, Lmiuix/animation/internal/RunnerHandler$SetToInfo;->state:Lmiuix/animation/controller/AnimState;

    :goto_0
    const/4 p1, 0x4

    .line 81
    invoke-virtual {p0, p1, v0}, Lmiuix/animation/internal/RunnerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 88
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiuix/animation/internal/RunnerHandler$SetToInfo;

    invoke-direct {p0, v0}, Lmiuix/animation/internal/RunnerHandler;->onSetTo(Lmiuix/animation/internal/RunnerHandler$SetToInfo;)V

    goto :goto_0

    .line 101
    :pswitch_1
    iget-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mRunnerStart:Z

    if-eqz v0, :cond_1

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 103
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v2

    invoke-virtual {v2}, Lmiuix/animation/internal/AnimRunner;->getAverageDelta()J

    move-result-wide v2

    .line 104
    iget-boolean v4, p0, Lmiuix/animation/internal/RunnerHandler;->mStart:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    .line 105
    iput-boolean v4, p0, Lmiuix/animation/internal/RunnerHandler;->mStart:Z

    const-wide/16 v4, 0x0

    .line 106
    iput-wide v4, p0, Lmiuix/animation/internal/RunnerHandler;->mTotalT:J

    const/4 v4, 0x0

    .line 107
    iput v4, p0, Lmiuix/animation/internal/RunnerHandler;->mFrameCount:I

    .line 108
    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/animation/internal/RunnerHandler;->runAnim(JJ)V

    goto :goto_0

    .line 109
    :cond_0
    iget-boolean v2, p0, Lmiuix/animation/internal/RunnerHandler;->mIsTaskRunning:Z

    if-nez v2, :cond_1

    .line 110
    iget-wide v2, p0, Lmiuix/animation/internal/RunnerHandler;->mLastRun:J

    sub-long v2, v0, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lmiuix/animation/internal/RunnerHandler;->runAnim(JJ)V

    goto :goto_0

    .line 115
    :pswitch_2
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->updateAnim()V

    goto :goto_0

    .line 91
    :pswitch_3
    sget-object v0, Lmiuix/animation/internal/TransitionInfo;->sMap:Ljava/util/Map;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/internal/TransitionInfo;

    if-eqz v0, :cond_1

    .line 93
    iget-object v1, v0, Lmiuix/animation/internal/TransitionInfo;->target:Lmiuix/animation/IAnimTarget;

    iget-object v2, p0, Lmiuix/animation/internal/RunnerHandler;->mTransMap:Ljava/util/Map;

    invoke-direct {p0, v1, v0, v2}, Lmiuix/animation/internal/RunnerHandler;->addToMap(Lmiuix/animation/IAnimTarget;Lmiuix/animation/utils/LinkNode;Ljava/util/Map;)V

    .line 94
    iget-boolean v0, p0, Lmiuix/animation/internal/RunnerHandler;->mIsTaskRunning:Z

    if-nez v0, :cond_1

    .line 95
    invoke-direct {p0}, Lmiuix/animation/internal/RunnerHandler;->doSetup()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 120
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOperation(Lmiuix/animation/internal/AnimOperationInfo;)V
    .locals 2

    .line 66
    iget-object v0, p1, Lmiuix/animation/internal/AnimOperationInfo;->target:Lmiuix/animation/IAnimTarget;

    const/4 v1, 0x0

    new-array v1, v1, [Lmiuix/animation/property/FloatProperty;

    invoke-virtual {v0, v1}, Lmiuix/animation/IAnimTarget;->isAnimRunning([Lmiuix/animation/property/FloatProperty;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p1, Lmiuix/animation/internal/AnimOperationInfo;->sendTime:J

    .line 68
    iget-object v0, p0, Lmiuix/animation/internal/RunnerHandler;->mOpMap:Ljava/util/Map;

    iget-object v1, p1, Lmiuix/animation/internal/AnimOperationInfo;->target:Lmiuix/animation/IAnimTarget;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
