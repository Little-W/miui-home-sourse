.class public Lcom/miui/performance/tracer/MethodTracer;
.super Ljava/lang/Object;
.source "MethodTracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/performance/tracer/MethodTracer$EvilMethodListener;
    }
.end annotation


# static fields
.field private static final BASE_TIME:J

.field private static ENABLED:Z

.field private static final LOCK:Ljava/lang/Object;

.field private static final MAIN_THREAD_ID:J

.field private static sBuffers:[J

.field private static volatile sCurrentDiffTime:J

.field private static sIndex:I

.field private static volatile sPauseUpdateTime:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    .line 31
    new-array v1, v0, [J

    sput-object v1, Lcom/miui/performance/tracer/MethodTracer;->sBuffers:[J

    .line 33
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    sput-wide v1, Lcom/miui/performance/tracer/MethodTracer;->MAIN_THREAD_ID:J

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/miui/performance/tracer/MethodTracer;->BASE_TIME:J

    .line 35
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/miui/performance/tracer/MethodTracer;->LOCK:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 37
    sput-wide v1, Lcom/miui/performance/tracer/MethodTracer;->sCurrentDiffTime:J

    .line 38
    sput-boolean v0, Lcom/miui/performance/tracer/MethodTracer;->sPauseUpdateTime:Z

    .line 40
    sput v0, Lcom/miui/performance/tracer/MethodTracer;->sIndex:I

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 11
    invoke-static {}, Lcom/miui/performance/tracer/MethodTracer;->dispatchStart()V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .line 11
    sget v0, Lcom/miui/performance/tracer/MethodTracer;->sIndex:I

    return v0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 11
    invoke-static {}, Lcom/miui/performance/tracer/MethodTracer;->dispatchEnd()V

    return-void
.end method

.method static synthetic access$300(II)[J
    .locals 0

    .line 11
    invoke-static {p0, p1}, Lcom/miui/performance/tracer/MethodTracer;->genMethodBuffers(II)[J

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400([J)[I
    .locals 0

    .line 11
    invoke-static {p0}, Lcom/miui/performance/tracer/MethodTracer;->genMethodTrace([J)[I

    move-result-object p0

    return-object p0
.end method

.method private static dispatchEnd()V
    .locals 1

    const/4 v0, 0x1

    .line 116
    sput-boolean v0, Lcom/miui/performance/tracer/MethodTracer;->sPauseUpdateTime:Z

    return-void
.end method

.method private static dispatchStart()V
    .locals 4

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/performance/tracer/MethodTracer;->BASE_TIME:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/miui/performance/tracer/MethodTracer;->sCurrentDiffTime:J

    const/4 v0, 0x0

    .line 108
    sput-boolean v0, Lcom/miui/performance/tracer/MethodTracer;->sPauseUpdateTime:Z

    .line 109
    sget-object v0, Lcom/miui/performance/tracer/MethodTracer;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    sget-object v1, Lcom/miui/performance/tracer/MethodTracer;->LOCK:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 111
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static genMethodBuffers(II)[J
    .locals 4

    const/4 v0, 0x0

    if-gt p0, p1, :cond_0

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    .line 197
    new-array v1, p1, [J

    .line 198
    sget-object v2, Lcom/miui/performance/tracer/MethodTracer;->sBuffers:[J

    invoke-static {v2, p0, v1, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 200
    :cond_0
    sget-object v1, Lcom/miui/performance/tracer/MethodTracer;->sBuffers:[J

    array-length v2, v1

    sub-int/2addr v2, p0

    add-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    .line 201
    new-array v2, v2, [J

    .line 202
    array-length v3, v1

    sub-int/2addr v3, p0

    invoke-static {v1, p0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 203
    sget-object v1, Lcom/miui/performance/tracer/MethodTracer;->sBuffers:[J

    array-length v3, v1

    sub-int/2addr v3, p0

    add-int/lit8 p1, p1, 0x1

    invoke-static {v1, v0, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v2

    :goto_0
    return-object v1
.end method

.method private static genMethodTrace([J)[I
    .locals 10

    .line 143
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const-wide/16 v3, 0x0

    if-ge v2, v0, :cond_3

    .line 145
    aget-wide v5, p0, v2

    invoke-static {v5, v6}, Lcom/miui/performance/tracer/MethodTracer;->isEnter(J)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_3

    :cond_0
    add-int/lit8 v5, v2, -0x1

    :goto_1
    if-lez v5, :cond_2

    .line 150
    aget-wide v6, p0, v5

    invoke-static {v6, v7}, Lcom/miui/performance/tracer/MethodTracer;->isEnter(J)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-wide v6, p0, v5

    aget-wide v8, p0, v2

    invoke-static {v6, v7, v8, v9}, Lcom/miui/performance/tracer/MethodTracer;->isSameMethod(JJ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 151
    aget-wide v6, p0, v5

    aget-wide v8, p0, v2

    invoke-static {v6, v7, v8, v9}, Lcom/miui/performance/tracer/MethodTracer;->genTraceBuffer(JJ)J

    move-result-wide v6

    aput-wide v6, p0, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 159
    :cond_2
    :goto_2
    aput-wide v3, p0, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    move v2, v0

    .line 163
    :goto_4
    array-length v5, p0

    if-ge v0, v5, :cond_7

    .line 164
    aget-wide v5, p0, v0

    cmp-long v5, v5, v3

    if-nez v5, :cond_4

    goto :goto_5

    .line 167
    :cond_4
    aget-wide v5, p0, v0

    invoke-static {v5, v6}, Lcom/miui/performance/tracer/MethodTracer;->isEnter(J)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 169
    aput-wide v3, p0, v0

    goto :goto_5

    .line 172
    :cond_5
    aget-wide v5, p0, v0

    invoke-static {v5, v6}, Lcom/miui/performance/tracer/MethodTracer;->getCostTime(J)I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_6

    .line 174
    aput-wide v3, p0, v0

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 181
    :cond_7
    new-array v0, v2, [I

    .line 182
    array-length v2, p0

    move v5, v1

    :goto_6
    if-ge v1, v2, :cond_9

    aget-wide v6, p0, v1

    cmp-long v8, v6, v3

    if-eqz v8, :cond_8

    add-int/lit8 v8, v5, 0x1

    .line 184
    invoke-static {v6, v7}, Lcom/miui/performance/tracer/MethodTracer;->trimTraceBuffer(J)I

    move-result v6

    aput v6, v0, v5

    move v5, v8

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    return-object v0
.end method

.method public static genTraceBuffer(JJ)J
    .locals 4

    const-wide/high16 v0, -0x1000000000000L

    and-long/2addr v0, p0

    const-wide v2, 0x7fffffffffffL

    and-long/2addr p0, v2

    and-long/2addr p2, v2

    sub-long/2addr p2, p0

    const-wide/16 p0, 0x7fff

    and-long/2addr p0, p2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static getCostTime(J)I
    .locals 2

    const-wide/16 v0, 0x7fff

    and-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public static isEnter(J)Z
    .locals 2

    const-wide v0, 0x800000000000L

    and-long/2addr p0, v0

    const/16 v0, 0x2f

    shr-long/2addr p0, v0

    const-wide/16 v0, 0x1

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSameMethod(JJ)Z
    .locals 2

    const-wide/high16 v0, -0x1000000000000L

    and-long/2addr p0, v0

    and-long/2addr p2, v0

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$prepareStart$0()V
    .locals 4

    .line 51
    :goto_0
    sget-boolean v0, Lcom/miui/performance/tracer/MethodTracer;->sPauseUpdateTime:Z

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/performance/tracer/MethodTracer;->BASE_TIME:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/miui/performance/tracer/MethodTracer;->sCurrentDiffTime:J

    const-wide/16 v0, 0x2

    .line 54
    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 56
    :cond_0
    sget-object v0, Lcom/miui/performance/tracer/MethodTracer;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/miui/performance/tracer/MethodTracer;->LOCK:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "MethodTracer"

    const-string v3, "updateTimeLock"

    .line 60
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    :goto_1
    monitor-exit v0

    goto :goto_0

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static prepareStart()V
    .locals 4

    .line 43
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/performance/tracer/MethodTracer;->BASE_TIME:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/miui/performance/tracer/MethodTracer;->sCurrentDiffTime:J

    const/4 v0, 0x1

    .line 44
    sput-boolean v0, Lcom/miui/performance/tracer/MethodTracer;->ENABLED:Z

    const/high16 v0, 0x100000

    .line 45
    new-array v0, v0, [J

    sput-object v0, Lcom/miui/performance/tracer/MethodTracer;->sBuffers:[J

    .line 46
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "perf.time_diff"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 47
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 48
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    sget-object v0, Lcom/miui/performance/tracer/-$$Lambda$MethodTracer$hKd5RMzc7X87ugGSEGJOVwmsfbc;->INSTANCE:Lcom/miui/performance/tracer/-$$Lambda$MethodTracer$hKd5RMzc7X87ugGSEGJOVwmsfbc;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static start(Lcom/miui/performance/tracer/MethodTracer$EvilMethodListener;)V
    .locals 2

    .line 68
    invoke-static {}, Lcom/miui/performance/tracer/MethodTracer;->prepareStart()V

    if-eqz p0, :cond_0

    .line 70
    sget-object v0, Lcom/miui/performance/tools/MainLooperPrinter;->INSTANCE:Lcom/miui/performance/tools/MainLooperPrinter;

    new-instance v1, Lcom/miui/performance/tracer/MethodTracer$1;

    invoke-direct {v1, p0}, Lcom/miui/performance/tracer/MethodTracer$1;-><init>(Lcom/miui/performance/tracer/MethodTracer$EvilMethodListener;)V

    invoke-virtual {v0, v1}, Lcom/miui/performance/tools/MainLooperPrinter;->addListener(Lcom/miui/performance/tools/MainLooperPrinter$DispatchListener;)V

    :cond_0
    return-void
.end method

.method public static trimTraceBuffer(J)I
    .locals 3

    const-wide/high16 v0, -0x1000000000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    const-wide/16 v1, 0x7fff

    and-long/2addr p0, v1

    long-to-int p0, p0

    or-int/2addr p0, v0

    return p0
.end method
