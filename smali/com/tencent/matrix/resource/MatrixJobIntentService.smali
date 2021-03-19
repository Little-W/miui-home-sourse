.class public abstract Lcom/tencent/matrix/resource/MatrixJobIntentService;
.super Landroid/app/Service;
.source "MatrixJobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/matrix/resource/MatrixJobIntentService$CommandProcessor;,
        Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkItem;,
        Lcom/tencent/matrix/resource/MatrixJobIntentService$GenericWorkItem;,
        Lcom/tencent/matrix/resource/MatrixJobIntentService$JobWorkEnqueuer;,
        Lcom/tencent/matrix/resource/MatrixJobIntentService$JobServiceEngineImpl;,
        Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;,
        Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatJobEngine;,
        Lcom/tencent/matrix/resource/MatrixJobIntentService$WorkEnqueuer;
    }
.end annotation


# static fields
.field static final sClassWorkEnqueuer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Lcom/tencent/matrix/resource/MatrixJobIntentService$WorkEnqueuer;",
            ">;"
        }
    .end annotation
.end field

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mCompatQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field mCompatWorkEnqueuer:Lcom/tencent/matrix/resource/MatrixJobIntentService$WorkEnqueuer;

.field mCurProcessor:Lcom/tencent/matrix/resource/MatrixJobIntentService$CommandProcessor;

.field mDestroyed:Z

.field mInterruptIfStopped:Z

.field mJobImpl:Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatJobEngine;

.field mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->sLock:Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 436
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mInterruptIfStopped:Z

    .line 112
    iput-boolean v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mStopped:Z

    .line 113
    iput-boolean v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mDestroyed:Z

    .line 437
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 438
    iput-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    goto :goto_0

    .line 440
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    :goto_0
    return-void
.end method

.method public static enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 535
    sget-object v0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 536
    :try_start_0
    invoke-static {p0, p1, v1, p2}, Lcom/tencent/matrix/resource/MatrixJobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Lcom/tencent/matrix/resource/MatrixJobIntentService$WorkEnqueuer;

    move-result-object p0

    .line 537
    invoke-virtual {p0, p2}, Lcom/tencent/matrix/resource/MatrixJobIntentService$WorkEnqueuer;->ensureJobId(I)V

    .line 538
    invoke-virtual {p0, p3}, Lcom/tencent/matrix/resource/MatrixJobIntentService$WorkEnqueuer;->enqueueWork(Landroid/content/Intent;)V

    .line 539
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 533
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "work must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V
    .locals 1

    .line 516
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0, p2, p3}, Lcom/tencent/matrix/resource/MatrixJobIntentService;->enqueueWork(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V

    return-void
.end method

.method static getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Lcom/tencent/matrix/resource/MatrixJobIntentService$WorkEnqueuer;
    .locals 2

    .line 544
    sget-object v0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/matrix/resource/MatrixJobIntentService$WorkEnqueuer;

    if-nez v0, :cond_2

    .line 546
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 550
    new-instance p2, Lcom/tencent/matrix/resource/MatrixJobIntentService$JobWorkEnqueuer;

    invoke-direct {p2, p0, p1, p3}, Lcom/tencent/matrix/resource/MatrixJobIntentService$JobWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    move-object v0, p2

    goto :goto_0

    .line 548
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t be here without a job id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 552
    :cond_1
    new-instance p2, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;

    invoke-direct {p2, p0, p1}, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    move-object v0, p2

    .line 554
    :goto_0
    sget-object p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->sClassWorkEnqueuer:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method


# virtual methods
.method dequeueWork()Lcom/tencent/matrix/resource/MatrixJobIntentService$GenericWorkItem;
    .locals 3

    .line 654
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mJobImpl:Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatJobEngine;

    if-eqz v0, :cond_0

    .line 655
    invoke-interface {v0}, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatJobEngine;->dequeueWork()Lcom/tencent/matrix/resource/MatrixJobIntentService$GenericWorkItem;

    move-result-object v0

    return-object v0

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 657
    monitor-enter v0

    .line 658
    :try_start_0
    iget-object v2, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 659
    iget-object v1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/matrix/resource/MatrixJobIntentService$GenericWorkItem;

    monitor-exit v0

    return-object v1

    .line 661
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 663
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    return-object v1
.end method

.method doStopCurrentWork()Z
    .locals 2

    .line 614
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCurProcessor:Lcom/tencent/matrix/resource/MatrixJobIntentService$CommandProcessor;

    if-eqz v0, :cond_0

    .line 615
    iget-boolean v1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mInterruptIfStopped:Z

    invoke-virtual {v0, v1}, Lcom/tencent/matrix/resource/MatrixJobIntentService$CommandProcessor;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x1

    .line 617
    iput-boolean v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mStopped:Z

    .line 618
    invoke-virtual {p0}, Lcom/tencent/matrix/resource/MatrixJobIntentService;->onStopCurrentWork()Z

    move-result v0

    return v0
.end method

.method ensureProcessorRunningLocked(Z)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 623
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCurProcessor:Lcom/tencent/matrix/resource/MatrixJobIntentService$CommandProcessor;

    if-nez v0, :cond_1

    .line 624
    new-instance v0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CommandProcessor;

    invoke-direct {v0, p0}, Lcom/tencent/matrix/resource/MatrixJobIntentService$CommandProcessor;-><init>(Lcom/tencent/matrix/resource/MatrixJobIntentService;)V

    iput-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCurProcessor:Lcom/tencent/matrix/resource/MatrixJobIntentService$CommandProcessor;

    .line 625
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCompatWorkEnqueuer:Lcom/tencent/matrix/resource/MatrixJobIntentService$WorkEnqueuer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 626
    invoke-virtual {v0}, Lcom/tencent/matrix/resource/MatrixJobIntentService$WorkEnqueuer;->serviceProcessingStarted()V

    .line 628
    :cond_0
    iget-object p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCurProcessor:Lcom/tencent/matrix/resource/MatrixJobIntentService$CommandProcessor;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Lcom/tencent/matrix/resource/MatrixJobIntentService$CommandProcessor;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 482
    iget-object p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mJobImpl:Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatJobEngine;

    if-eqz p1, :cond_0

    .line 483
    invoke-interface {p1}, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatJobEngine;->compatGetBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 446
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 447
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 448
    new-instance v0, Lcom/tencent/matrix/resource/MatrixJobIntentService$JobServiceEngineImpl;

    invoke-direct {v0, p0}, Lcom/tencent/matrix/resource/MatrixJobIntentService$JobServiceEngineImpl;-><init>(Lcom/tencent/matrix/resource/MatrixJobIntentService;)V

    iput-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mJobImpl:Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatJobEngine;

    .line 449
    iput-object v1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCompatWorkEnqueuer:Lcom/tencent/matrix/resource/MatrixJobIntentService$WorkEnqueuer;

    goto :goto_0

    .line 451
    :cond_0
    iput-object v1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mJobImpl:Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatJobEngine;

    .line 452
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 453
    invoke-static {p0, v0, v1, v1}, Lcom/tencent/matrix/resource/MatrixJobIntentService;->getWorkEnqueuer(Landroid/content/Context;Landroid/content/ComponentName;ZI)Lcom/tencent/matrix/resource/MatrixJobIntentService$WorkEnqueuer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCompatWorkEnqueuer:Lcom/tencent/matrix/resource/MatrixJobIntentService$WorkEnqueuer;

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 491
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 492
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 493
    monitor-enter v0

    const/4 v1, 0x1

    .line 494
    :try_start_0
    iput-boolean v1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mDestroyed:Z

    .line 495
    iget-object v1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCompatWorkEnqueuer:Lcom/tencent/matrix/resource/MatrixJobIntentService$WorkEnqueuer;

    invoke-virtual {v1}, Lcom/tencent/matrix/resource/MatrixJobIntentService$WorkEnqueuer;->serviceProcessingFinished()V

    .line 496
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method protected abstract onHandleWork(Landroid/content/Intent;)V
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 463
    iget-object p2, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 464
    iget-object p2, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCompatWorkEnqueuer:Lcom/tencent/matrix/resource/MatrixJobIntentService$WorkEnqueuer;

    invoke-virtual {p2}, Lcom/tencent/matrix/resource/MatrixJobIntentService$WorkEnqueuer;->serviceStartReceived()V

    .line 465
    iget-object p2, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    monitor-enter p2

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    new-instance v1, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkItem;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :goto_0
    invoke-direct {v1, p0, p1, p3}, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkItem;-><init>(Lcom/tencent/matrix/resource/MatrixJobIntentService;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 468
    invoke-virtual {p0, p1}, Lcom/tencent/matrix/resource/MatrixJobIntentService;->ensureProcessorRunningLocked(Z)V

    .line 469
    monitor-exit p2

    const/4 p1, 0x3

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    const/4 p1, 0x2

    return p1
.end method

.method public onStopCurrentWork()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method processorFinished()V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 634
    monitor-enter v0

    const/4 v1, 0x0

    .line 635
    :try_start_0
    iput-object v1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCurProcessor:Lcom/tencent/matrix/resource/MatrixJobIntentService$CommandProcessor;

    .line 644
    iget-object v1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCompatQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 645
    invoke-virtual {p0, v1}, Lcom/tencent/matrix/resource/MatrixJobIntentService;->ensureProcessorRunningLocked(Z)V

    goto :goto_0

    .line 646
    :cond_0
    iget-boolean v1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mDestroyed:Z

    if-nez v1, :cond_1

    .line 647
    iget-object v1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService;->mCompatWorkEnqueuer:Lcom/tencent/matrix/resource/MatrixJobIntentService$WorkEnqueuer;

    invoke-virtual {v1}, Lcom/tencent/matrix/resource/MatrixJobIntentService$WorkEnqueuer;->serviceProcessingFinished()V

    .line 649
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method
