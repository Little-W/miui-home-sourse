.class final Lcom/tencent/matrix/resource/MatrixJobIntentService$JobServiceEngineImpl;
.super Landroid/app/job/JobServiceEngine;
.source "MatrixJobIntentService.java"

# interfaces
.implements Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatJobEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/matrix/resource/MatrixJobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JobServiceEngineImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/matrix/resource/MatrixJobIntentService$JobServiceEngineImpl$WrapperWorkItem;
    }
.end annotation


# instance fields
.field final mLock:Ljava/lang/Object;

.field mParams:Landroid/app/job/JobParameters;

.field final mService:Lcom/tencent/matrix/resource/MatrixJobIntentService;


# direct methods
.method constructor <init>(Lcom/tencent/matrix/resource/MatrixJobIntentService;)V
    .locals 1

    .line 299
    invoke-direct {p0, p1}, Landroid/app/job/JobServiceEngine;-><init>(Landroid/app/Service;)V

    .line 273
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    .line 300
    iput-object p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$JobServiceEngineImpl;->mService:Lcom/tencent/matrix/resource/MatrixJobIntentService;

    return-void
.end method


# virtual methods
.method public compatGetBinder()Landroid/os/IBinder;
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/tencent/matrix/resource/MatrixJobIntentService$JobServiceEngineImpl;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public dequeueWork()Lcom/tencent/matrix/resource/MatrixJobIntentService$GenericWorkItem;
    .locals 6

    .line 336
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    :try_start_0
    iget-object v1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 338
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    .line 341
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v1}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    .line 347
    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 348
    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$JobServiceEngineImpl;->mService:Lcom/tencent/matrix/resource/MatrixJobIntentService;

    invoke-virtual {v2}, Lcom/tencent/matrix/resource/MatrixJobIntentService;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 349
    new-instance v0, Lcom/tencent/matrix/resource/MatrixJobIntentService$JobServiceEngineImpl$WrapperWorkItem;

    invoke-direct {v0, p0, v1}, Lcom/tencent/matrix/resource/MatrixJobIntentService$JobServiceEngineImpl$WrapperWorkItem;-><init>(Lcom/tencent/matrix/resource/MatrixJobIntentService$JobServiceEngineImpl;Landroid/app/job/JobWorkItem;)V

    return-object v0

    :cond_1
    return-object v2

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "JobServiceEngineImpl"

    const-string v4, "exception occurred."

    const/4 v5, 0x0

    .line 343
    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Lcom/tencent/matrix/util/MatrixLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 346
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 311
    :try_start_0
    iput-object p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    .line 312
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    iget-object p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$JobServiceEngineImpl;->mService:Lcom/tencent/matrix/resource/MatrixJobIntentService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/matrix/resource/MatrixJobIntentService;->ensureProcessorRunningLocked(Z)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 312
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 321
    iget-object p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$JobServiceEngineImpl;->mService:Lcom/tencent/matrix/resource/MatrixJobIntentService;

    invoke-virtual {p1}, Lcom/tencent/matrix/resource/MatrixJobIntentService;->doStopCurrentWork()Z

    move-result p1

    .line 322
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$JobServiceEngineImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 325
    :try_start_0
    iput-object v1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$JobServiceEngineImpl;->mParams:Landroid/app/job/JobParameters;

    .line 326
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
