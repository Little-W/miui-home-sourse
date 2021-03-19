.class public Lcom/tencent/matrix/trace/core/AppMethodBeat;
.super Ljava/lang/Object;
.source "AppMethodBeat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;,
        Lcom/tencent/matrix/trace/core/AppMethodBeat$MethodEnterListener;
    }
.end annotation


# static fields
.field public static final METHOD_ID_DISPATCH:I = 0xffffe

.field private static final METHOD_ID_MAX:I = 0xfffff

.field private static final STATUS_DEFAULT:I = 0x7fffffff

.field private static final STATUS_EXPIRED_START:I = -0x2

.field private static final STATUS_OUT_RELEASE:I = -0x3

.field private static final STATUS_READY:I = 0x1

.field private static final STATUS_STARTED:I = 0x2

.field private static final STATUS_STOPPED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Matrix.AppMethodBeat"

.field private static assertIn:Z = false

.field private static checkStartExpiredRunnable:Ljava/lang/Runnable; = null

.field public static isDev:Z = false

.field private static isPauseUpdateTime:Z

.field private static final listeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/tencent/matrix/trace/listeners/IAppMethodBeatListener;",
            ">;"
        }
    .end annotation
.end field

.field private static looperMonitorListener:Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;

.field private static sBuffer:[J

.field private static volatile sCurrentDiffTime:J

.field private static volatile sDiffTime:J

.field private static sFocusActivitySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandler:Landroid/os/Handler;

.field private static sIndex:I

.field private static sIndexRecordHead:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

.field private static sInstance:Lcom/tencent/matrix/trace/core/AppMethodBeat;

.field private static sLastIndex:I

.field private static sMainThreadId:J

.field public static sMethodEnterListener:Lcom/tencent/matrix/trace/core/AppMethodBeat$MethodEnterListener;

.field private static sTimerUpdateThread:Landroid/os/HandlerThread;

.field private static sUpdateDiffTimeRunnable:Ljava/lang/Runnable;

.field private static volatile status:I

.field private static final statusLock:Ljava/lang/Object;

.field private static final updateTimeLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;

    invoke-direct {v0}, Lcom/tencent/matrix/trace/core/AppMethodBeat;-><init>()V

    sput-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sInstance:Lcom/tencent/matrix/trace/core/AppMethodBeat;

    const v0, 0x7fffffff

    .line 36
    sput v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->status:I

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->statusLock:Ljava/lang/Object;

    const v0, 0xf4240

    .line 39
    new-array v0, v0, [J

    sput-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sBuffer:[J

    const/4 v0, 0x0

    .line 40
    sput v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndex:I

    const/4 v1, -0x1

    .line 41
    sput v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sLastIndex:I

    .line 42
    sput-boolean v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->assertIn:Z

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sCurrentDiffTime:J

    .line 44
    sget-wide v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sCurrentDiffTime:J

    sput-wide v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sDiffTime:J

    .line 45
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    sput-wide v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sMainThreadId:J

    const-string v1, "matrix_time_update_thread"

    .line 46
    invoke-static {v1}, Lcom/tencent/matrix/util/MatrixHandlerThread;->getNewHandlerThread(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v1

    sput-object v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sTimerUpdateThread:Landroid/os/HandlerThread;

    .line 47
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sTimerUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sHandler:Landroid/os/Handler;

    .line 50
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sFocusActivitySet:Ljava/util/Set;

    .line 51
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->listeners:Ljava/util/HashSet;

    .line 52
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->updateTimeLock:Ljava/lang/Object;

    .line 53
    sput-boolean v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->isPauseUpdateTime:Z

    const/4 v0, 0x0

    .line 54
    sput-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->checkStartExpiredRunnable:Ljava/lang/Runnable;

    .line 55
    new-instance v1, Lcom/tencent/matrix/trace/core/AppMethodBeat$1;

    invoke-direct {v1}, Lcom/tencent/matrix/trace/core/AppMethodBeat$1;-><init>()V

    sput-object v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->looperMonitorListener:Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;

    .line 75
    sget-object v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sHandler:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/matrix/trace/core/AppMethodBeat$2;

    invoke-direct {v2}, Lcom/tencent/matrix/trace/core/AppMethodBeat$2;-><init>()V

    const-wide/16 v3, 0x3a98

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    new-instance v1, Lcom/tencent/matrix/trace/core/AppMethodBeat$3;

    invoke-direct {v1}, Lcom/tencent/matrix/trace/core/AppMethodBeat$3;-><init>()V

    sput-object v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sUpdateDiffTimeRunnable:Ljava/lang/Runnable;

    .line 326
    sput-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndexRecordHead:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .line 20
    sget v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->status:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0

    .line 20
    sput p0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->status:I

    return p0
.end method

.method static synthetic access$100()V
    .locals 0

    .line 20
    invoke-static {}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->dispatchBegin()V

    return-void
.end method

.method static synthetic access$1000()Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;
    .locals 1

    .line 20
    sget-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndexRecordHead:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;)Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;
    .locals 0

    .line 20
    sput-object p0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndexRecordHead:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    return-object p0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 20
    invoke-static {}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->dispatchEnd()V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .line 20
    invoke-static {}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->realRelease()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 20
    sget-boolean v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->isPauseUpdateTime:Z

    return v0
.end method

.method static synthetic access$502(J)J
    .locals 0

    .line 20
    sput-wide p0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sCurrentDiffTime:J

    return-wide p0
.end method

.method static synthetic access$600()J
    .locals 2

    .line 20
    sget-wide v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sDiffTime:J

    return-wide v0
.end method

.method static synthetic access$700()Ljava/lang/Object;
    .locals 1

    .line 20
    sget-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->updateTimeLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .locals 1

    .line 20
    sget-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->statusLock:Ljava/lang/Object;

    return-object v0
.end method

.method public static at(Landroid/app/Activity;Z)V
    .locals 5

    .line 271
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    .line 273
    sget-object p1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sFocusActivitySet:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 274
    sget-object p1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->listeners:Ljava/util/HashSet;

    monitor-enter p1

    .line 275
    :try_start_0
    sget-object v3, Lcom/tencent/matrix/trace/core/AppMethodBeat;->listeners:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/matrix/trace/listeners/IAppMethodBeatListener;

    .line 276
    invoke-interface {v4, p0}, Lcom/tencent/matrix/trace/listeners/IAppMethodBeatListener;->onActivityFocused(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p0, "Matrix.AppMethodBeat"

    const-string p1, "[at] visibleScene[%s] has %s focus!"

    .line 279
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->getVisibleScene()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "attach"

    aput-object v1, v2, v0

    invoke-static {p0, p1, v2}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 278
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 282
    :cond_1
    sget-object p1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sFocusActivitySet:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Matrix.AppMethodBeat"

    const-string p1, "[at] visibleScene[%s] has %s focus!"

    .line 283
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->getVisibleScene()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "detach"

    aput-object v1, v2, v0

    invoke-static {p0, p1, v2}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static checkPileup(I)V
    .locals 6

    .line 364
    sget-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndexRecordHead:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    :goto_0
    if-eqz v0, :cond_1

    .line 366
    iget v1, v0, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->index:I

    if-eq v1, p0, :cond_0

    iget v1, v0, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->index:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sLastIndex:I

    const v2, 0xf423f

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 367
    iput-boolean v1, v0, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->isValid:Z

    const-string v2, "Matrix.AppMethodBeat"

    const-string v3, "[checkPileup] %s"

    const/4 v4, 0x1

    .line 368
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/tencent/matrix/util/MatrixLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    invoke-static {v0}, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->access$900(Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;)Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    move-result-object v0

    sput-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndexRecordHead:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private copyData(Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;)[J
    .locals 12

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 421
    new-array v3, v2, [J

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x1

    .line 423
    :try_start_0
    iget-boolean v8, p1, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->isValid:Z

    if-eqz v8, :cond_2

    iget-boolean v8, p2, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->isValid:Z

    if-eqz v8, :cond_2

    .line 425
    iget v8, p1, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->index:I

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 426
    iget v9, p2, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->index:I

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-le v9, v8, :cond_0

    sub-int/2addr v9, v8

    add-int/2addr v9, v7

    .line 430
    new-array v3, v9, [J

    .line 431
    sget-object v10, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sBuffer:[J

    invoke-static {v10, v8, v3, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    if-ge v9, v8, :cond_1

    add-int/2addr v9, v7

    .line 433
    sget-object v10, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sBuffer:[J

    array-length v10, v10

    sub-int/2addr v10, v8

    add-int/2addr v10, v9

    .line 434
    new-array v3, v10, [J

    .line 435
    sget-object v10, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sBuffer:[J

    sget-object v11, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sBuffer:[J

    array-length v11, v11

    sub-int/2addr v11, v8

    invoke-static {v10, v8, v3, v2, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    sget-object v10, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sBuffer:[J

    sget-object v11, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sBuffer:[J

    array-length v11, v11

    sub-int/2addr v11, v8

    invoke-static {v10, v2, v3, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    const-string v8, "Matrix.AppMethodBeat"

    const-string v9, "[copyData] [%s:%s] length:%s cost:%sms"

    .line 445
    new-array v6, v6, [Ljava/lang/Object;

    iget p1, p1, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->index:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    iget p1, p2, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->index:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v7

    array-length p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v4

    invoke-static {v8, v9, v6}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_2
    const-string v8, "Matrix.AppMethodBeat"

    const-string v9, "[copyData] [%s:%s] length:%s cost:%sms"

    new-array v6, v6, [Ljava/lang/Object;

    iget p1, p1, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->index:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    iget p1, p2, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->index:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v7

    array-length p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v4

    invoke-static {v8, v9, v6}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :catchall_0
    move-exception v8

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_1
    const-string v9, "Matrix.AppMethodBeat"

    .line 442
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v10, v2, [Ljava/lang/Object;

    invoke-static {v9, v8, v10}, Lcom/tencent/matrix/util/MatrixLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v8, "Matrix.AppMethodBeat"

    const-string v9, "[copyData] [%s:%s] length:%s cost:%sms"

    .line 445
    new-array v6, v6, [Ljava/lang/Object;

    iget p1, p1, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->index:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    iget p1, p2, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->index:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v7

    array-length p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v4

    invoke-static {v8, v9, v6}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :goto_1
    new-array v6, v6, [Ljava/lang/Object;

    iget p1, p1, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->index:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v2

    iget p1, p2, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->index:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v7

    array-length p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v4

    const-string p1, "Matrix.AppMethodBeat"

    const-string p2, "[copyData] [%s:%s] length:%s cost:%sms"

    invoke-static {p1, p2, v6}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    throw v8
.end method

.method private static dispatchBegin()V
    .locals 4

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sDiffTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sCurrentDiffTime:J

    const/4 v0, 0x0

    .line 185
    sput-boolean v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->isPauseUpdateTime:Z

    .line 187
    sget-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->updateTimeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    sget-object v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->updateTimeLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 189
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static dispatchEnd()V
    .locals 1

    const/4 v0, 0x1

    .line 193
    sput-boolean v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->isPauseUpdateTime:Z

    return-void
.end method

.method public static getDiffTime()J
    .locals 2

    .line 450
    sget-wide v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sDiffTime:J

    return-wide v0
.end method

.method public static getInstance()Lcom/tencent/matrix/trace/core/AppMethodBeat;
    .locals 1

    .line 106
    sget-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sInstance:Lcom/tencent/matrix/trace/core/AppMethodBeat;

    return-object v0
.end method

.method public static getVisibleScene()Ljava/lang/String;
    .locals 1

    .line 289
    sget-object v0, Lcom/tencent/matrix/AppActiveMatrixDelegate;->INSTANCE:Lcom/tencent/matrix/AppActiveMatrixDelegate;

    invoke-virtual {v0}, Lcom/tencent/matrix/AppActiveMatrixDelegate;->getVisibleScene()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(I)V
    .locals 5

    .line 203
    sget v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->status:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    const v0, 0xfffff

    if-lt p0, v0, :cond_1

    return-void

    .line 210
    :cond_1
    sget v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->status:I

    const v1, 0x7fffffff

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 211
    sget-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->statusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    sget v3, Lcom/tencent/matrix/trace/core/AppMethodBeat;->status:I

    if-ne v3, v1, :cond_2

    .line 213
    invoke-static {}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->realExecute()V

    .line 214
    sput v2, Lcom/tencent/matrix/trace/core/AppMethodBeat;->status:I

    .line 216
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 219
    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 220
    sget-object v3, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sMethodEnterListener:Lcom/tencent/matrix/trace/core/AppMethodBeat$MethodEnterListener;

    if-eqz v3, :cond_4

    .line 221
    invoke-interface {v3, p0, v0, v1}, Lcom/tencent/matrix/trace/core/AppMethodBeat$MethodEnterListener;->enter(IJ)V

    .line 224
    :cond_4
    sget-wide v3, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sMainThreadId:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_7

    .line 225
    sget-boolean v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->assertIn:Z

    if-eqz v0, :cond_5

    const-string p0, "Matrix.AppMethodBeat"

    const-string v0, "ERROR!!! AppMethodBeat.i Recursive calls!!!"

    .line 226
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 229
    :cond_5
    sput-boolean v2, Lcom/tencent/matrix/trace/core/AppMethodBeat;->assertIn:Z

    .line 230
    sget v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndex:I

    const v1, 0xf4240

    const/4 v3, 0x0

    if-ge v0, v1, :cond_6

    .line 231
    invoke-static {p0, v0, v2}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->mergeData(IIZ)V

    goto :goto_1

    .line 233
    :cond_6
    sput v3, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndex:I

    .line 234
    sget v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndex:I

    invoke-static {p0, v0, v2}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->mergeData(IIZ)V

    .line 236
    :goto_1
    sget p0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndex:I

    add-int/2addr p0, v2

    sput p0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndex:I

    .line 237
    sput-boolean v3, Lcom/tencent/matrix/trace/core/AppMethodBeat;->assertIn:Z

    :cond_7
    return-void
.end method

.method public static isRealTrace()Z
    .locals 2

    .line 144
    sget v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->status:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static mergeData(IIZ)V
    .locals 6

    const v0, 0xffffe

    if-ne p0, v0, :cond_0

    .line 301
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sDiffTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sCurrentDiffTime:J

    :cond_0
    const-wide/16 v0, 0x0

    if-eqz p2, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    :cond_1
    int-to-long v2, p0

    const/16 p0, 0x2b

    shl-long/2addr v2, p0

    or-long/2addr v0, v2

    .line 308
    sget-wide v2, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sCurrentDiffTime:J

    const-wide v4, 0x7ffffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 309
    sget-object p0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sBuffer:[J

    aput-wide v0, p0, p1

    .line 310
    invoke-static {p1}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->checkPileup(I)V

    .line 311
    sput p1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sLastIndex:I

    return-void
.end method

.method public static o(I)V
    .locals 4

    .line 247
    sget v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->status:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    const v0, 0xfffff

    if-lt p0, v0, :cond_1

    return-void

    .line 253
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    sget-wide v2, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sMainThreadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 254
    sget v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndex:I

    const v1, 0xf4240

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 255
    invoke-static {p0, v0, v2}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->mergeData(IIZ)V

    goto :goto_0

    .line 257
    :cond_2
    sput v2, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndex:I

    .line 258
    sget v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndex:I

    invoke-static {p0, v0, v2}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->mergeData(IIZ)V

    .line 260
    :goto_0
    sget p0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndex:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndex:I

    :cond_3
    return-void
.end method

.method private static realExecute()V
    .locals 5

    const-string v0, "Matrix.AppMethodBeat"

    const-string v1, "[realExecute] timestamp:%s"

    const/4 v2, 0x1

    .line 161
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sDiffTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sCurrentDiffTime:J

    .line 165
    sget-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 166
    sget-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sHandler:Landroid/os/Handler;

    sget-object v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sUpdateDiffTimeRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    sget-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/matrix/trace/core/AppMethodBeat$4;

    invoke-direct {v1}, Lcom/tencent/matrix/trace/core/AppMethodBeat$4;-><init>()V

    sput-object v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->checkStartExpiredRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    invoke-static {}, Lcom/tencent/matrix/trace/hacker/ActivityThreadHacker;->hackSysHandlerCallback()V

    .line 180
    sget-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->looperMonitorListener:Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;

    invoke-static {v0}, Lcom/tencent/matrix/trace/core/LooperMonitor;->register(Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;)V

    return-void
.end method

.method private static realRelease()V
    .locals 7

    .line 148
    sget-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->statusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    sget v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->status:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const-string v1, "Matrix.AppMethodBeat"

    const-string v2, "[realRelease] timestamp:%s"

    const/4 v3, 0x1

    .line 150
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    sget-object v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 152
    sget-object v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->looperMonitorListener:Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;

    invoke-static {v1}, Lcom/tencent/matrix/trace/core/LooperMonitor;->unregister(Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;)V

    .line 153
    sget-object v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sTimerUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 154
    sput-object v2, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sBuffer:[J

    const/4 v1, -0x3

    .line 155
    sput v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->status:I

    .line 157
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addListener(Lcom/tencent/matrix/trace/listeners/IAppMethodBeatListener;)V
    .locals 2

    .line 315
    sget-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->listeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 316
    :try_start_0
    sget-object v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->listeners:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 317
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public copyData(Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;)[J
    .locals 2

    .line 416
    new-instance v0, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    sget v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->copyData(Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;)[J

    move-result-object p1

    return-object p1
.end method

.method public isAlive()Z
    .locals 2

    .line 139
    sget v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->status:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maskIndex(Ljava/lang/String;)Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;
    .locals 5

    .line 329
    sget-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndexRecordHead:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    if-nez v0, :cond_0

    .line 330
    new-instance v0, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    sget v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;-><init>(I)V

    sput-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndexRecordHead:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    .line 331
    sget-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndexRecordHead:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    iput-object p1, v0, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->source:Ljava/lang/String;

    return-object v0

    .line 334
    :cond_0
    new-instance v0, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    sget v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {v0, v1}, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;-><init>(I)V

    .line 335
    iput-object p1, v0, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->source:Ljava/lang/String;

    .line 336
    sget-object p1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndexRecordHead:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    const/4 v1, 0x0

    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    :goto_0
    if-eqz v1, :cond_4

    .line 339
    iget v2, v0, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->index:I

    iget v3, v1, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->index:I

    if-gt v2, v3, :cond_3

    if-nez p1, :cond_1

    .line 341
    sget-object p1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndexRecordHead:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    .line 342
    sput-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndexRecordHead:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    .line 343
    invoke-static {v0, p1}, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->access$902(Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;)Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    goto :goto_1

    .line 345
    :cond_1
    invoke-static {p1}, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->access$900(Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;)Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    move-result-object v1

    .line 346
    invoke-static {p1}, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->access$900(Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;)Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 347
    invoke-static {p1, v0}, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->access$902(Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;)Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    .line 349
    :cond_2
    invoke-static {v0, v1}, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->access$902(Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;)Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    :goto_1
    return-object v0

    .line 354
    :cond_3
    invoke-static {v1}, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->access$900(Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;)Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    move-result-object p1

    move-object v4, v1

    move-object v1, p1

    move-object p1, v4

    goto :goto_0

    .line 357
    :cond_4
    invoke-static {p1, v0}, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->access$902(Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;)Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    return-object v0
.end method

.method public onStart()V
    .locals 8

    .line 111
    sget-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->statusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    sget v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->status:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    sget v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->status:I

    const/4 v5, -0x2

    if-lt v1, v5, :cond_1

    .line 113
    sget-object v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sHandler:Landroid/os/Handler;

    sget-object v5, Lcom/tencent/matrix/trace/core/AppMethodBeat;->checkStartExpiredRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 114
    sget-object v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sBuffer:[J

    if-eqz v1, :cond_0

    const-string v1, "Matrix.AppMethodBeat"

    const-string v5, "[onStart] preStatus:%s"

    .line 117
    new-array v6, v4, [Ljava/lang/Object;

    sget v7, Lcom/tencent/matrix/trace/core/AppMethodBeat;->status:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {}, Lcom/tencent/matrix/trace/util/Utils;->getStack()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v1, v5, v6}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    sput v4, Lcom/tencent/matrix/trace/core/AppMethodBeat;->status:I

    goto :goto_0

    .line 115
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Matrix.AppMethodBeat sBuffer == null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v1, "Matrix.AppMethodBeat"

    const-string v4, "[onStart] current status:%s"

    .line 120
    new-array v3, v3, [Ljava/lang/Object;

    sget v5, Lcom/tencent/matrix/trace/core/AppMethodBeat;->status:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-static {v1, v4, v3}, Lcom/tencent/matrix/util/MatrixLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStop()V
    .locals 6

    .line 127
    sget-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->statusLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    sget v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->status:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "Matrix.AppMethodBeat"

    const-string v2, "[onStop] %s"

    .line 129
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/matrix/trace/util/Utils;->getStack()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v2, v4}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, -0x1

    .line 130
    sput v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->status:I

    goto :goto_0

    :cond_0
    const-string v1, "Matrix.AppMethodBeat"

    const-string v2, "[onStop] current status:%s"

    .line 132
    new-array v4, v4, [Ljava/lang/Object;

    sget v5, Lcom/tencent/matrix/trace/core/AppMethodBeat;->status:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-static {v1, v2, v4}, Lcom/tencent/matrix/util/MatrixLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public printIndexRecord()V
    .locals 5

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " \n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    sget-object v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->sIndexRecordHead:Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    :goto_0
    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-static {v1}, Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;->access$900(Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;)Lcom/tencent/matrix/trace/core/AppMethodBeat$IndexRecord;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "Matrix.AppMethodBeat"

    const-string v2, "[printIndexRecord] %s"

    const/4 v3, 0x1

    .line 460
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public removeListener(Lcom/tencent/matrix/trace/listeners/IAppMethodBeatListener;)V
    .locals 2

    .line 321
    sget-object v0, Lcom/tencent/matrix/trace/core/AppMethodBeat;->listeners:Ljava/util/HashSet;

    monitor-enter v0

    .line 322
    :try_start_0
    sget-object v1, Lcom/tencent/matrix/trace/core/AppMethodBeat;->listeners:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 323
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
