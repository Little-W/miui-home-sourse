.class public Lcom/tencent/matrix/trace/core/LooperMonitor;
.super Ljava/lang/Object;
.source "LooperMonitor.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;,
        Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;
    }
.end annotation


# static fields
.field private static isReflectLoggingError:Z

.field private static final mainMonitor:Lcom/tencent/matrix/trace/core/LooperMonitor;


# instance fields
.field private lastCheckPrinterTime:J

.field private final listeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;",
            ">;"
        }
    .end annotation
.end field

.field private looper:Landroid/os/Looper;

.field private printer:Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/tencent/matrix/trace/core/LooperMonitor;

    invoke-direct {v0}, Lcom/tencent/matrix/trace/core/LooperMonitor;-><init>()V

    sput-object v0, Lcom/tencent/matrix/trace/core/LooperMonitor;->mainMonitor:Lcom/tencent/matrix/trace/core/LooperMonitor;

    const/4 v0, 0x0

    .line 115
    sput-boolean v0, Lcom/tencent/matrix/trace/core/LooperMonitor;->isReflectLoggingError:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 90
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/matrix/trace/core/LooperMonitor;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/tencent/matrix/trace/core/LooperMonitor;->listeners:Ljava/util/HashSet;

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/tencent/matrix/trace/core/LooperMonitor;->lastCheckPrinterTime:J

    .line 83
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iput-object p1, p0, Lcom/tencent/matrix/trace/core/LooperMonitor;->looper:Landroid/os/Looper;

    .line 85
    invoke-direct {p0}, Lcom/tencent/matrix/trace/core/LooperMonitor;->resetPrinter()V

    .line 86
    invoke-direct {p0, p1}, Lcom/tencent/matrix/trace/core/LooperMonitor;->addIdleHandler(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$000(Lcom/tencent/matrix/trace/core/LooperMonitor;ZLjava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/tencent/matrix/trace/core/LooperMonitor;->dispatch(ZLjava/lang/String;)V

    return-void
.end method

.method private declared-synchronized addIdleHandler(Landroid/os/Looper;)V
    .locals 2

    monitor-enter p0

    .line 156
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 157
    invoke-virtual {p1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 160
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mQueue"

    invoke-static {v0, v1, p1}, Lcom/tencent/matrix/util/ReflectUtils;->get(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/MessageQueue;

    .line 161
    invoke-virtual {p1, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "Matrix.LooperMonitor"

    const-string v1, "[removeIdleHandler] %s"

    .line 163
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private dispatch(ZLjava/lang/String;)V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/tencent/matrix/trace/core/LooperMonitor;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;

    .line 206
    invoke-virtual {v1}, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    .line 208
    iget-boolean v2, v1, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;->isHasDispatchStart:Z

    if-nez v2, :cond_0

    .line 209
    invoke-virtual {v1, p2}, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;->onDispatchStart(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_1
    iget-boolean v2, v1, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;->isHasDispatchStart:Z

    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {v1, p2}, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;->onDispatchEnd(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-nez p1, :cond_0

    .line 216
    iget-boolean v2, v1, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;->isHasDispatchStart:Z

    if-eqz v2, :cond_0

    .line 217
    invoke-virtual {v1}, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;->dispatchEnd()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method static register(Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;)V
    .locals 1

    .line 59
    sget-object v0, Lcom/tencent/matrix/trace/core/LooperMonitor;->mainMonitor:Lcom/tencent/matrix/trace/core/LooperMonitor;

    invoke-virtual {v0, p0}, Lcom/tencent/matrix/trace/core/LooperMonitor;->addListener(Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;)V

    return-void
.end method

.method private declared-synchronized resetPrinter()V
    .locals 9

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 120
    :try_start_0
    sget-boolean v2, Lcom/tencent/matrix/trace/core/LooperMonitor;->isReflectLoggingError:Z

    if-nez v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/tencent/matrix/trace/core/LooperMonitor;->looper:Landroid/os/Looper;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mLogging"

    iget-object v4, p0, Lcom/tencent/matrix/trace/core/LooperMonitor;->looper:Landroid/os/Looper;

    invoke-static {v2, v3, v4}, Lcom/tencent/matrix/util/ReflectUtils;->get(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Printer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :try_start_1
    iget-object v0, p0, Lcom/tencent/matrix/trace/core/LooperMonitor;->printer:Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/tencent/matrix/trace/core/LooperMonitor;->printer:Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 123
    monitor-exit p0

    return-void

    :cond_0
    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v2

    .line 127
    :goto_0
    :try_start_2
    sput-boolean v1, Lcom/tencent/matrix/trace/core/LooperMonitor;->isReflectLoggingError:Z

    const-string v3, "Matrix.LooperMonitor"

    const-string v4, "[resetPrinter] %s"

    .line 128
    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/tencent/matrix/trace/core/LooperMonitor;->printer:Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const-string v2, "Matrix.LooperMonitor"

    const-string v5, "maybe thread:%s printer[%s] was replace other[%s]!"

    const/4 v6, 0x3

    .line 132
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/tencent/matrix/trace/core/LooperMonitor;->looper:Landroid/os/Looper;

    .line 133
    invoke-virtual {v7}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/tencent/matrix/trace/core/LooperMonitor;->printer:Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;

    aput-object v7, v6, v1

    aput-object v0, v6, v3

    .line 132
    invoke-static {v2, v5, v6}, Lcom/tencent/matrix/util/MatrixLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/tencent/matrix/trace/core/LooperMonitor;->looper:Landroid/os/Looper;

    new-instance v5, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;

    invoke-direct {v5, p0, v0}, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;-><init>(Lcom/tencent/matrix/trace/core/LooperMonitor;Landroid/util/Printer;)V

    iput-object v5, p0, Lcom/tencent/matrix/trace/core/LooperMonitor;->printer:Lcom/tencent/matrix/trace/core/LooperMonitor$LooperPrinter;

    invoke-virtual {v2, v5}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    if-eqz v0, :cond_3

    const-string v2, "Matrix.LooperMonitor"

    const-string v5, "reset printer, originPrinter[%s] in %s"

    .line 137
    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/tencent/matrix/trace/core/LooperMonitor;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v5, v3}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method static unregister(Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;)V
    .locals 1

    .line 63
    sget-object v0, Lcom/tencent/matrix/trace/core/LooperMonitor;->mainMonitor:Lcom/tencent/matrix/trace/core/LooperMonitor;

    invoke-virtual {v0, p0}, Lcom/tencent/matrix/trace/core/LooperMonitor;->removeListener(Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/tencent/matrix/trace/core/LooperMonitor;->listeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/tencent/matrix/trace/core/LooperMonitor;->listeners:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public queueIdle()Z
    .locals 4

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/matrix/trace/core/LooperMonitor;->lastCheckPrinterTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/tencent/matrix/trace/core/LooperMonitor;->resetPrinter()V

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/matrix/trace/core/LooperMonitor;->lastCheckPrinterTime:J

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public removeListener(Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/tencent/matrix/trace/core/LooperMonitor;->listeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/tencent/matrix/trace/core/LooperMonitor;->listeners:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 79
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
