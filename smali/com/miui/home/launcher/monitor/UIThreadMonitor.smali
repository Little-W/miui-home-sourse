.class public Lcom/miui/home/launcher/monitor/UIThreadMonitor;
.super Ljava/lang/Object;
.source "UIThreadMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final sInstance:Lcom/miui/home/launcher/monitor/UIThreadMonitor;


# instance fields
.field private addAnimationQueue:Ljava/lang/reflect/Method;

.field private addInputQueue:Ljava/lang/reflect/Method;

.field private addTraversalQueue:Ljava/lang/reflect/Method;

.field private callbackExist:[Z

.field private callbackQueueLock:Ljava/lang/Object;

.field private callbackQueues:[Ljava/lang/Object;

.field private choreographer:Landroid/view/Choreographer;

.field private config:Lcom/tencent/matrix/trace/config/TraceConfig;

.field private dispatchTimeMs:[J

.field private frameIntervalNanos:J

.field private volatile isAlive:Z

.field private isBelongFrame:Z

.field private isInit:Z

.field private final observers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/miui/home/launcher/monitor/LooperObserver;",
            ">;"
        }
    .end annotation
.end field

.field private queueCost:[J

.field private queueStatus:[I

.field private volatile token:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;

    invoke-direct {v0}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->sInstance:Lcom/miui/home/launcher/monitor/UIThreadMonitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->isAlive:Z

    const/4 v1, 0x4

    .line 26
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->dispatchTimeMs:[J

    .line 27
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->observers:Ljava/util/HashSet;

    const-wide/16 v1, 0x0

    .line 28
    iput-wide v1, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->token:J

    .line 29
    iput-boolean v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->isBelongFrame:Z

    const-wide/32 v1, 0xfe502a

    .line 68
    iput-wide v1, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->frameIntervalNanos:J

    const/4 v1, 0x3

    .line 69
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->queueStatus:[I

    .line 70
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->callbackExist:[Z

    .line 71
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->queueCost:[J

    .line 75
    iput-boolean v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->isInit:Z

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/monitor/UIThreadMonitor;)Z
    .locals 0

    .line 21
    iget-boolean p0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->isAlive:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/monitor/UIThreadMonitor;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->dispatchBegin()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/monitor/UIThreadMonitor;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->dispatchEnd()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/monitor/UIThreadMonitor;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->doQueueEnd(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/monitor/UIThreadMonitor;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->doQueueBegin(I)V

    return-void
.end method

.method private declared-synchronized addFrameCallback(ILjava/lang/Runnable;Z)V
    .locals 10

    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->callbackExist:[Z

    aget-boolean v0, v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string p2, "Launcher.UIThreadMonitor"

    const-string v0, "[addFrameCallback] this type %s callback has exist! isAddHeader:%s"

    .line 135
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {p2, v0, v1}, Lcom/tencent/matrix/util/MatrixLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    monitor-exit p0

    return-void

    .line 139
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->isAlive:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    const-string p1, "Launcher.UIThreadMonitor"

    const-string p2, "[addFrameCallback] UIThreadMonitor is not alive!"

    .line 140
    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/tencent/matrix/util/MatrixLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    monitor-exit p0

    return-void

    .line 144
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->callbackQueueLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v5, v4

    goto :goto_0

    .line 154
    :pswitch_0
    :try_start_3
    iget-object v5, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->addTraversalQueue:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 151
    :pswitch_1
    iget-object v5, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->addAnimationQueue:Ljava/lang/reflect/Method;

    goto :goto_0

    .line 148
    :pswitch_2
    iget-object v5, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->addInputQueue:Ljava/lang/reflect/Method;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :goto_0
    if-eqz v5, :cond_3

    .line 158
    iget-object v6, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->callbackQueues:[Ljava/lang/Object;

    aget-object v6, v6, p1

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    if-nez p3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    goto :goto_1

    :cond_2
    const-wide/16 v8, -0x1

    :goto_1
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v7, v3

    aput-object p2, v7, v2

    aput-object v4, v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object p2, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->callbackExist:[Z

    aput-boolean v2, p2, p1

    .line 161
    :cond_3
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception p1

    :try_start_5
    const-string p2, "Launcher.UIThreadMonitor"

    .line 163
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, p3}, Lcom/tencent/matrix/util/MatrixLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 165
    :goto_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dispatchBegin()V
    .locals 12

    const-string v0, "begin"

    .line 220
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->dispatchTimeMs:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    iput-wide v1, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->token:J

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->dispatchTimeMs:[J

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    const/4 v4, 0x2

    aput-wide v1, v0, v4

    const v0, 0xffffe

    .line 223
    invoke-static {v0}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->i(I)V

    .line 224
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 225
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->observers:Ljava/util/HashSet;

    monitor-enter v0

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->observers:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/miui/home/launcher/monitor/LooperObserver;

    .line 227
    invoke-virtual {v5}, Lcom/miui/home/launcher/monitor/LooperObserver;->isDispatchBegin()Z

    move-result v2

    if-nez v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->dispatchTimeMs:[J

    aget-wide v6, v2, v3

    iget-object v2, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->dispatchTimeMs:[J

    aget-wide v8, v2, v4

    iget-wide v10, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->token:J

    invoke-virtual/range {v5 .. v11}, Lcom/miui/home/launcher/monitor/LooperObserver;->dispatchBegin(JJJ)V

    goto :goto_0

    .line 231
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dispatchEnd()V
    .locals 25

    move-object/from16 v1, p0

    .line 255
    iget-boolean v0, v1, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->isBelongFrame:Z

    if-eqz v0, :cond_0

    .line 256
    iget-wide v2, v1, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->token:J

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->doFrameEnd(J)V

    .line 259
    :cond_0
    iget-wide v2, v1, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->token:J

    .line 260
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 262
    iget-object v6, v1, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->observers:Ljava/util/HashSet;

    monitor-enter v6

    .line 263
    :try_start_0
    iget-object v0, v1, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->observers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Lcom/miui/home/launcher/monitor/LooperObserver;

    .line 264
    invoke-virtual {v11}, Lcom/miui/home/launcher/monitor/LooperObserver;->isDispatchBegin()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 265
    invoke-static {}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->getVisibleScene()Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v1, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->token:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    iget-boolean v7, v1, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->isBelongFrame:Z

    if-eqz v7, :cond_2

    sub-long v17, v4, v2

    goto :goto_1

    :cond_2
    const-wide/16 v17, 0x0

    :goto_1
    iget-object v7, v1, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->queueCost:[J

    aget-wide v19, v7, v9

    iget-object v7, v1, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->queueCost:[J

    aget-wide v21, v7, v10

    iget-object v7, v1, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->queueCost:[J

    aget-wide v23, v7, v8

    invoke-virtual/range {v11 .. v24}, Lcom/miui/home/launcher/monitor/LooperObserver;->doFrame(Ljava/lang/String;JJJJJJ)V

    goto :goto_0

    .line 268
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 270
    iget-object v0, v1, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->dispatchTimeMs:[J

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    aput-wide v2, v0, v4

    .line 271
    iget-object v0, v1, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->dispatchTimeMs:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v10

    const v0, 0xffffe

    .line 273
    invoke-static {v0}, Lcom/tencent/matrix/trace/core/AppMethodBeat;->o(I)V

    .line 275
    iget-object v2, v1, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->observers:Ljava/util/HashSet;

    monitor-enter v2

    .line 276
    :try_start_1
    iget-object v0, v1, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->observers:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/miui/home/launcher/monitor/LooperObserver;

    .line 277
    invoke-virtual {v11}, Lcom/miui/home/launcher/monitor/LooperObserver;->isDispatchBegin()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 278
    iget-object v3, v1, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->dispatchTimeMs:[J

    aget-wide v12, v3, v9

    iget-object v3, v1, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->dispatchTimeMs:[J

    aget-wide v14, v3, v8

    iget-object v3, v1, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->dispatchTimeMs:[J

    aget-wide v16, v3, v10

    iget-object v3, v1, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->dispatchTimeMs:[J

    aget-wide v18, v3, v4

    iget-wide v5, v1, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->token:J

    iget-boolean v3, v1, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->isBelongFrame:Z

    move-wide/from16 v20, v5

    move/from16 v22, v3

    invoke-virtual/range {v11 .. v22}, Lcom/miui/home/launcher/monitor/LooperObserver;->dispatchEnd(JJJJJZ)V

    goto :goto_2

    .line 281
    :cond_5
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 283
    iput-boolean v9, v1, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->isBelongFrame:Z

    return-void

    :catchall_0
    move-exception v0

    .line 281
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 268
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private doFrameBegin(J)V
    .locals 0

    const/4 p1, 0x1

    .line 235
    iput-boolean p1, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->isBelongFrame:Z

    return-void
.end method

.method private doFrameEnd(J)V
    .locals 7

    const/4 p1, 0x2

    .line 240
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->doQueueEnd(I)V

    .line 242
    iget-object p2, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->queueStatus:[I

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p2, v2

    if-eq v3, p1, :cond_0

    .line 244
    iget-object v4, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->queueCost:[J

    const-wide/16 v5, -0x64

    aput-wide v5, v4, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    .line 247
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->queueStatus:[I

    const/4 p1, 0x1

    .line 249
    invoke-direct {p0, v1, p0, p1}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->addFrameCallback(ILjava/lang/Runnable;Z)V

    return-void
.end method

.method private doQueueBegin(I)V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->queueStatus:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    .line 288
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->queueCost:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    aput-wide v1, v0, p1

    return-void
.end method

.method private doQueueEnd(I)V
    .locals 6

    .line 292
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->queueStatus:[I

    const/4 v1, 0x2

    aput v1, v0, p1

    .line 293
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->queueCost:[J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->queueCost:[J

    aget-wide v4, v3, p1

    sub-long/2addr v1, v4

    aput-wide v1, v0, p1

    .line 294
    monitor-enter p0

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->callbackExist:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 296
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getMonitor()Lcom/miui/home/launcher/monitor/UIThreadMonitor;
    .locals 1

    .line 78
    sget-object v0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->sInstance:Lcom/miui/home/launcher/monitor/UIThreadMonitor;

    return-object v0
.end method

.method private varargs reflectChoreographerMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 210
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 211
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "Launcher.UIThreadMonitor"

    .line 214
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {p2, p1, p3}, Lcom/tencent/matrix/util/MatrixLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private reflectObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 198
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    const/4 v0, 0x1

    .line 199
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 200
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 202
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p2, "Launcher.UIThreadMonitor"

    .line 203
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, v0}, Lcom/tencent/matrix/util/MatrixLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public addObserver(Lcom/miui/home/launcher/monitor/LooperObserver;)V
    .locals 2

    .line 172
    iget-boolean v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->isAlive:Z

    if-nez v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->onStart()V

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->observers:Ljava/util/HashSet;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->observers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public init()V
    .locals 10

    .line 86
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 89
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->choreographer:Landroid/view/Choreographer;

    .line 90
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->choreographer:Landroid/view/Choreographer;

    const-string v1, "mLock"

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->reflectObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->callbackQueueLock:Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->choreographer:Landroid/view/Choreographer;

    const-string v1, "mCallbackQueues"

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->reflectObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->callbackQueues:[Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->callbackQueues:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "addCallbackLocked"

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/Object;

    const/4 v7, 0x2

    aput-object v5, v4, v7

    invoke-direct {p0, v0, v2, v4}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->reflectChoreographerMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->addInputQueue:Ljava/lang/reflect/Method;

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->callbackQueues:[Ljava/lang/Object;

    aget-object v0, v0, v6

    const-string v2, "addCallbackLocked"

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v7

    invoke-direct {p0, v0, v2, v4}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->reflectChoreographerMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->addAnimationQueue:Ljava/lang/reflect/Method;

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->callbackQueues:[Ljava/lang/Object;

    aget-object v0, v0, v7

    const-string v2, "addCallbackLocked"

    new-array v4, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/Object;

    aput-object v5, v4, v7

    invoke-direct {p0, v0, v2, v4}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->reflectChoreographerMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->addTraversalQueue:Ljava/lang/reflect/Method;

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->choreographer:Landroid/view/Choreographer;

    const-string v2, "mFrameIntervalNanos"

    invoke-direct {p0, v0, v2}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->reflectObject(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->frameIntervalNanos:J

    .line 99
    const-class v0, Lcom/tencent/matrix/trace/core/LooperMonitor;

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v4, "register"

    new-array v5, v6, [Ljava/lang/Class;

    const-class v8, Lcom/tencent/matrix/trace/core/LooperMonitor$LooperDispatchListener;

    aput-object v8, v5, v1

    new-array v8, v6, [Ljava/lang/Object;

    new-instance v9, Lcom/miui/home/launcher/monitor/UIThreadMonitor$1;

    invoke-direct {v9, p0}, Lcom/miui/home/launcher/monitor/UIThreadMonitor$1;-><init>(Lcom/miui/home/launcher/monitor/UIThreadMonitor;)V

    aput-object v9, v8, v1

    invoke-static {v0, v2, v4, v5, v8}, Lcom/miui/launcher/utils/ReflectUtils;->callStaticMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iput-boolean v6, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->isInit:Z

    const-string v0, "Launcher.UIThreadMonitor"

    const-string v2, "[UIThreadMonitor] %s %s %s %s %s frameIntervalNanos:%s"

    const/4 v4, 0x6

    .line 121
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->callbackQueueLock:Ljava/lang/Object;

    if-nez v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v5, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->callbackQueues:[Ljava/lang/Object;

    if-nez v5, :cond_1

    move v5, v6

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    iget-object v5, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->addInputQueue:Ljava/lang/reflect/Method;

    if-nez v5, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->addTraversalQueue:Ljava/lang/reflect/Method;

    if-nez v5, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    const/4 v3, 0x4

    iget-object v5, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->addAnimationQueue:Ljava/lang/reflect/Method;

    if-nez v5, :cond_4

    move v1, v6

    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v3

    const/4 v1, 0x5

    iget-wide v5, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->frameIntervalNanos:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v0, v2, v4}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->config:Lcom/tencent/matrix/trace/config/TraceConfig;

    invoke-virtual {v0}, Lcom/tencent/matrix/trace/config/TraceConfig;->isDevEnv()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 124
    new-instance v0, Lcom/miui/home/launcher/monitor/UIThreadMonitor$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/monitor/UIThreadMonitor$2;-><init>(Lcom/miui/home/launcher/monitor/UIThreadMonitor;)V

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->addObserver(Lcom/miui/home/launcher/monitor/LooperObserver;)V

    :cond_5
    return-void

    .line 87
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "must be init in main thread!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public isInit()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->isInit:Z

    return v0
.end method

.method public declared-synchronized onStart()V
    .locals 6

    monitor-enter p0

    .line 301
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->isInit:Z

    if-eqz v0, :cond_1

    .line 304
    iget-boolean v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->isAlive:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 305
    iput-boolean v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->isAlive:Z

    .line 306
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "Launcher.UIThreadMonitor"

    const-string v2, "[onStart] callbackExist:%s %s"

    const/4 v3, 0x2

    .line 307
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->callbackExist:[Z

    invoke-static {v4}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {}, Lcom/tencent/matrix/trace/util/Utils;->getStack()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x3

    .line 308
    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->callbackExist:[Z

    .line 309
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 310
    :try_start_2
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->queueStatus:[I

    .line 311
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->queueCost:[J

    .line 312
    invoke-direct {p0, v5, p0, v0}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->addFrameCallback(ILjava/lang/Runnable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 309
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 314
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 302
    :cond_1
    :try_start_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "never init!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onStop()V
    .locals 5

    monitor-enter p0

    .line 344
    :try_start_0
    iget-boolean v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->isInit:Z

    if-eqz v0, :cond_1

    .line 347
    iget-boolean v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->isAlive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 348
    iput-boolean v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->isAlive:Z

    const-string v1, "Launcher.UIThreadMonitor"

    const-string v2, "[onStop] callbackExist:%s %s"

    const/4 v3, 0x2

    .line 349
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->callbackExist:[Z

    invoke-static {v4}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    invoke-static {}, Lcom/tencent/matrix/trace/util/Utils;->getStack()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lcom/tencent/matrix/util/MatrixLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :cond_0
    monitor-exit p0

    return-void

    .line 345
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "UIThreadMonitor is never init!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeObserver(Lcom/miui/home/launcher/monitor/LooperObserver;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->observers:Ljava/util/HashSet;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->observers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 183
    iget-object p1, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->observers:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->onStop()V

    .line 186
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public run()V
    .locals 3

    .line 318
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 319
    iget-wide v0, p0, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->token:J

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->doFrameBegin(J)V

    const/4 v0, 0x0

    .line 320
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->doQueueBegin(I)V

    .line 322
    new-instance v0, Lcom/miui/home/launcher/monitor/UIThreadMonitor$3;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/monitor/UIThreadMonitor$3;-><init>(Lcom/miui/home/launcher/monitor/UIThreadMonitor;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, v1}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->addFrameCallback(ILjava/lang/Runnable;Z)V

    .line 331
    new-instance v0, Lcom/miui/home/launcher/monitor/UIThreadMonitor$4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/monitor/UIThreadMonitor$4;-><init>(Lcom/miui/home/launcher/monitor/UIThreadMonitor;)V

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/miui/home/launcher/monitor/UIThreadMonitor;->addFrameCallback(ILjava/lang/Runnable;Z)V

    return-void
.end method
