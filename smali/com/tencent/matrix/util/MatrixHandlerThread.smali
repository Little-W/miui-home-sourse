.class public Lcom/tencent/matrix/util/MatrixHandlerThread;
.super Ljava/lang/Object;
.source "MatrixHandlerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;
    }
.end annotation


# static fields
.field private static volatile defaultHandler:Landroid/os/Handler;

.field private static volatile defaultHandlerThread:Landroid/os/HandlerThread;

.field private static volatile defaultMainHandler:Landroid/os/Handler;

.field private static handlerThreads:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/os/HandlerThread;",
            ">;"
        }
    .end annotation
.end field

.field public static isDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tencent/matrix/util/MatrixHandlerThread;->defaultMainHandler:Landroid/os/Handler;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/tencent/matrix/util/MatrixHandlerThread;->handlerThreads:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 51
    sput-boolean v0, Lcom/tencent/matrix/util/MatrixHandlerThread;->isDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultHandlerThread()Landroid/os/HandlerThread;
    .locals 6

    .line 59
    const-class v0, Lcom/tencent/matrix/util/MatrixHandlerThread;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/tencent/matrix/util/MatrixHandlerThread;->defaultHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_1

    .line 61
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "default_matrix_thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/tencent/matrix/util/MatrixHandlerThread;->defaultHandlerThread:Landroid/os/HandlerThread;

    .line 62
    sget-object v1, Lcom/tencent/matrix/util/MatrixHandlerThread;->defaultHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 63
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/tencent/matrix/util/MatrixHandlerThread;->defaultHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/tencent/matrix/util/MatrixHandlerThread;->defaultHandler:Landroid/os/Handler;

    .line 64
    sget-object v1, Lcom/tencent/matrix/util/MatrixHandlerThread;->defaultHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sget-boolean v2, Lcom/tencent/matrix/util/MatrixHandlerThread;->isDebug:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;

    invoke-direct {v2}, Lcom/tencent/matrix/util/MatrixHandlerThread$LooperPrinter;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    const-string v1, "Matrix.HandlerThread"

    const-string v2, "create default handler thread, we should use these thread normal, isDebug:%s"

    const/4 v3, 0x1

    .line 65
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-boolean v5, Lcom/tencent/matrix/util/MatrixHandlerThread;->isDebug:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/matrix/util/MatrixLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_1
    sget-object v1, Lcom/tencent/matrix/util/MatrixHandlerThread;->defaultHandlerThread:Landroid/os/HandlerThread;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 68
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getNewHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;
    .locals 6

    .line 79
    sget-object v0, Lcom/tencent/matrix/util/MatrixHandlerThread;->handlerThreads:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/HandlerThread;

    .line 81
    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const-string v1, "Matrix.HandlerThread"

    const-string v4, "warning: remove dead handler thread with name %s"

    .line 83
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v1, v4, v2}, Lcom/tencent/matrix/util/MatrixLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 88
    sget-object v1, Lcom/tencent/matrix/util/MatrixHandlerThread;->handlerThreads:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "Matrix.HandlerThread"

    const-string v4, "warning: create new handler thread with name %s, alive thread size:%d"

    const/4 v5, 0x2

    .line 89
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v3

    sget-object p0, Lcom/tencent/matrix/util/MatrixHandlerThread;->handlerThreads:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v2

    invoke-static {v1, v4, v5}, Lcom/tencent/matrix/util/MatrixLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method
