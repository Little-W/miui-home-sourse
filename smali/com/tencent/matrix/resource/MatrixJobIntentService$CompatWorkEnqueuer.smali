.class final Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;
.super Lcom/tencent/matrix/resource/MatrixJobIntentService$WorkEnqueuer;
.source "MatrixJobIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/matrix/resource/MatrixJobIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompatWorkEnqueuer"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

.field mLaunchingService:Z

.field private final mRunWakeLock:Landroid/os/PowerManager$WakeLock;

.field mServiceProcessing:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 4

    .line 175
    invoke-direct {p0, p2}, Lcom/tencent/matrix/resource/MatrixJobIntentService$WorkEnqueuer;-><init>(Landroid/content/ComponentName;)V

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mContext:Landroid/content/Context;

    .line 177
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "power"

    .line 181
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":launch"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 183
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":run"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 185
    iget-object p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "Matrix.JobIntentService"

    const-string p2, "it would be better to grant WAKE_LOCK permission to your app so that tinker can use WakeLock to keep system awake."

    .line 187
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/tencent/matrix/util/MatrixLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 188
    iput-object p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-object p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    :goto_0
    return-void
.end method


# virtual methods
.method enqueueWork(Landroid/content/Intent;)V
    .locals 3

    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 195
    iget-object p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 197
    :try_start_0
    iget-object p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 198
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :try_start_1
    iget-boolean p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 200
    iput-boolean p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    .line 201
    iget-boolean p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_0

    .line 207
    iget-object p1, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 210
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string v0, "Matrix.JobIntentService"

    const-string v1, "Exception occurred."

    const/4 v2, 0x0

    .line 213
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lcom/tencent/matrix/util/MatrixLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public serviceProcessingFinished()V
    .locals 3

    .line 246
    monitor-enter p0

    .line 247
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    if-eqz v0, :cond_1

    .line 250
    iget-boolean v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    const/4 v0, 0x0

    .line 253
    iput-boolean v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    .line 254
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 258
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public serviceProcessingStarted()V
    .locals 3

    .line 228
    monitor-enter p0

    .line 230
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 231
    iput-boolean v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mServiceProcessing:Z

    .line 234
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mRunWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0x927c0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mLaunchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 241
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public serviceStartReceived()V
    .locals 1

    .line 219
    monitor-enter p0

    const/4 v0, 0x0

    .line 222
    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/matrix/resource/MatrixJobIntentService$CompatWorkEnqueuer;->mLaunchingService:Z

    .line 223
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
