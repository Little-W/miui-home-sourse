.class public Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;
.super Ljava/lang/Object;
.source "AndroidHeapDumper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDumpStorageManager:Lcom/tencent/matrix/resource/watcher/DumpStorageManager;

.field private final mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/matrix/resource/watcher/DumpStorageManager;)V
    .locals 2

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;-><init>(Landroid/content/Context;Lcom/tencent/matrix/resource/watcher/DumpStorageManager;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/matrix/resource/watcher/DumpStorageManager;Landroid/os/Handler;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;->mDumpStorageManager:Lcom/tencent/matrix/resource/watcher/DumpStorageManager;

    .line 59
    iput-object p3, p0, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private cancelToast(Landroid/widget/Toast;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$2;-><init>(Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;Landroid/widget/Toast;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showToast(Lcom/tencent/matrix/resource/leakcanary/internal/FutureResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/matrix/resource/leakcanary/internal/FutureResult<",
            "Landroid/widget/Toast;",
            ">;)V"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper$1;-><init>(Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;Lcom/tencent/matrix/resource/leakcanary/internal/FutureResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public dumpHeap()Ljava/io/File;
    .locals 8

    .line 63
    iget-object v0, p0, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;->mDumpStorageManager:Lcom/tencent/matrix/resource/watcher/DumpStorageManager;

    invoke-virtual {v0}, Lcom/tencent/matrix/resource/watcher/DumpStorageManager;->newHprofFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Matrix.AndroidHeapDumper"

    const-string v3, "hprof file is null."

    .line 66
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/tencent/matrix/util/MatrixLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 70
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const-string v3, "Matrix.AndroidHeapDumper"

    const-string v5, "hprof file path: %s does not indicate a full path."

    .line 72
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v5, v4}, Lcom/tencent/matrix/util/MatrixLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 76
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "Matrix.AndroidHeapDumper"

    const-string v5, "hprof file path: %s cannot be written."

    .line 77
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v3, v5, v4}, Lcom/tencent/matrix/util/MatrixLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 81
    :cond_2
    new-instance v3, Lcom/tencent/matrix/resource/leakcanary/internal/FutureResult;

    invoke-direct {v3}, Lcom/tencent/matrix/resource/leakcanary/internal/FutureResult;-><init>()V

    .line 82
    invoke-direct {p0, v3}, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;->showToast(Lcom/tencent/matrix/resource/leakcanary/internal/FutureResult;)V

    const-wide/16 v5, 0x5

    .line 84
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v7}, Lcom/tencent/matrix/resource/leakcanary/internal/FutureResult;->wait(JLjava/util/concurrent/TimeUnit;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v0, "Matrix.AndroidHeapDumper"

    const-string v3, "give up dumping heap, waiting for toast too long."

    .line 85
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/tencent/matrix/util/MatrixLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 90
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v3}, Lcom/tencent/matrix/resource/leakcanary/internal/FutureResult;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/Toast;

    invoke-direct {p0, v3}, Lcom/tencent/matrix/resource/watcher/AndroidHeapDumper;->cancelToast(Landroid/widget/Toast;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v3

    const-string v5, "Matrix.AndroidHeapDumper"

    const-string v6, "failed to dump heap into file: %s."

    .line 94
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v5, v3, v6, v4}, Lcom/tencent/matrix/util/MatrixLog;->printErrStackTrace(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method
