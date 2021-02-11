.class public Ljava8/util/concurrent/Phaser;
.super Ljava/lang/Object;
.source "Phaser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/concurrent/Phaser$QNode;
    }
.end annotation


# static fields
.field private static final COUNTS_MASK:J = 0xffffffffL

.field private static final EMPTY:I = 0x1

.field private static final MAX_PARTIES:I = 0xffff

.field private static final MAX_PHASE:I = 0x7fffffff

.field private static final NCPU:I

.field private static final ONE_ARRIVAL:I = 0x1

.field private static final ONE_DEREGISTER:I = 0x10001

.field private static final ONE_PARTY:I = 0x10000

.field private static final PARTIES_MASK:J = 0xffff0000L

.field private static final PARTIES_SHIFT:I = 0x10

.field private static final PHASE_SHIFT:I = 0x20

.field static final SPINS_PER_ARRIVAL:I

.field private static final STATE:J

.field private static final TERMINATION_BIT:J = -0x8000000000000000L

.field private static final U:Lsun/misc/Unsafe;

.field private static final UNARRIVED_MASK:I = 0xffff


# instance fields
.field private final evenQ:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava8/util/concurrent/Phaser$QNode;",
            ">;"
        }
    .end annotation
.end field

.field private final oddQ:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava8/util/concurrent/Phaser$QNode;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Ljava8/util/concurrent/Phaser;

.field private final root:Ljava8/util/concurrent/Phaser;

.field private volatile state:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 971
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Ljava8/util/concurrent/Phaser;->NCPU:I

    .line 984
    sget v0, Ljava8/util/concurrent/Phaser;->NCPU:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x100

    :goto_0
    sput v0, Ljava8/util/concurrent/Phaser;->SPINS_PER_ARRIVAL:I

    .line 1104
    sget-object v0, Ljava8/util/concurrent/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava8/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    .line 1108
    :try_start_0
    sget-object v0, Ljava8/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    const-class v1, Ljava8/util/concurrent/Phaser;

    const-string v2, "state"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava8/util/concurrent/Phaser;->STATE:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1116
    const-class v0, Ljava/util/concurrent/locks/LockSupport;

    return-void

    :catch_0
    move-exception v0

    .line 1110
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 475
    invoke-direct {p0, v0, v1}, Ljava8/util/concurrent/Phaser;-><init>(Ljava8/util/concurrent/Phaser;I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 488
    invoke-direct {p0, v0, p1}, Ljava8/util/concurrent/Phaser;-><init>(Ljava8/util/concurrent/Phaser;I)V

    return-void
.end method

.method public constructor <init>(Ljava8/util/concurrent/Phaser;)V
    .locals 1

    const/4 v0, 0x0

    .line 497
    invoke-direct {p0, p1, v0}, Ljava8/util/concurrent/Phaser;-><init>(Ljava8/util/concurrent/Phaser;I)V

    return-void
.end method

.method public constructor <init>(Ljava8/util/concurrent/Phaser;I)V
    .locals 4

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    ushr-int/lit8 v0, p2, 0x10

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 516
    iput-object p1, p0, Ljava8/util/concurrent/Phaser;->parent:Ljava8/util/concurrent/Phaser;

    if-eqz p1, :cond_0

    .line 518
    iget-object v1, p1, Ljava8/util/concurrent/Phaser;->root:Ljava8/util/concurrent/Phaser;

    .line 519
    iput-object v1, p0, Ljava8/util/concurrent/Phaser;->root:Ljava8/util/concurrent/Phaser;

    .line 520
    iget-object v2, v1, Ljava8/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v2, p0, Ljava8/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 521
    iget-object v1, v1, Ljava8/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v1, p0, Ljava8/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 523
    invoke-direct {p1, v0}, Ljava8/util/concurrent/Phaser;->doRegister(I)I

    move-result v0

    goto :goto_0

    .line 526
    :cond_0
    iput-object p0, p0, Ljava8/util/concurrent/Phaser;->root:Ljava8/util/concurrent/Phaser;

    .line 527
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ljava8/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 528
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Ljava8/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    const-wide/16 p1, 0x1

    goto :goto_1

    :cond_2
    int-to-long v0, v0

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    int-to-long p1, p2

    const/16 v2, 0x10

    shl-long v2, p1, v2

    or-long/2addr v0, v2

    or-long/2addr p1, v0

    .line 530
    :goto_1
    iput-wide p1, p0, Ljava8/util/concurrent/Phaser;->state:J

    return-void

    .line 514
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal number of parties"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private abortWait(I)I
    .locals 4

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    .line 956
    iget-object p1, p0, Ljava8/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljava8/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 959
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/concurrent/Phaser$QNode;

    .line 960
    iget-object v1, p0, Ljava8/util/concurrent/Phaser;->root:Ljava8/util/concurrent/Phaser;

    iget-wide v1, v1, Ljava8/util/concurrent/Phaser;->state:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    if-eqz v0, :cond_3

    .line 961
    iget-object v2, v0, Ljava8/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    if-eqz v2, :cond_2

    iget v3, v0, Ljava8/util/concurrent/Phaser$QNode;->phase:I

    if-ne v3, v1, :cond_2

    goto :goto_1

    .line 963
    :cond_2
    iget-object v1, v0, Ljava8/util/concurrent/Phaser$QNode;->next:Ljava8/util/concurrent/Phaser$QNode;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 964
    iput-object v1, v0, Ljava8/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    .line 965
    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_0

    :cond_3
    :goto_1
    return v1
.end method

.method private static arrivedOf(J)I
    .locals 1

    long-to-int p0, p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    ushr-int/lit8 p1, p0, 0x10

    const v0, 0xffff

    and-int/2addr p0, v0

    sub-int p0, p1, p0

    :goto_0
    return p0
.end method

.method private badArrive(J)Ljava/lang/String;
    .locals 2

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted arrival of unregistered party for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-direct {p0, p1, p2}, Ljava8/util/concurrent/Phaser;->stateToString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private badRegister(J)Ljava/lang/String;
    .locals 2

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to register more than 65535 parties for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-direct {p0, p1, p2}, Ljava8/util/concurrent/Phaser;->stateToString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private doArrive(I)I
    .locals 17

    move-object/from16 v8, p0

    .line 346
    iget-object v9, v8, Ljava8/util/concurrent/Phaser;->root:Ljava8/util/concurrent/Phaser;

    :cond_0
    if-ne v9, v8, :cond_1

    .line 348
    iget-wide v0, v8, Ljava8/util/concurrent/Phaser;->state:J

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava8/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    :goto_0
    move-wide v4, v0

    const/16 v10, 0x20

    ushr-long v0, v4, v10

    long-to-int v11, v0

    if-gez v11, :cond_2

    return v11

    :cond_2
    long-to-int v0, v4

    const/4 v12, 0x1

    if-ne v0, v12, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const v1, 0xffff

    and-int/2addr v0, v1

    :goto_1
    move v13, v0

    if-lez v13, :cond_9

    .line 356
    sget-object v0, Ljava8/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/Phaser;->STATE:J

    move/from16 v14, p1

    int-to-long v6, v14

    sub-long v15, v4, v6

    move-object/from16 v1, p0

    move-wide v6, v15

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne v13, v12, :cond_8

    const-wide v0, 0xffff0000L

    and-long/2addr v0, v15

    long-to-int v2, v0

    ushr-int/lit8 v2, v2, 0x10

    const-wide/16 v3, 0x1

    if-ne v9, v8, :cond_6

    .line 361
    invoke-virtual {v8, v11, v2}, Ljava8/util/concurrent/Phaser;->onAdvance(II)Z

    move-result v5

    if-eqz v5, :cond_4

    const-wide/high16 v2, -0x8000000000000000L

    or-long/2addr v0, v2

    goto :goto_2

    :cond_4
    if-nez v2, :cond_5

    or-long/2addr v0, v3

    goto :goto_2

    :cond_5
    int-to-long v2, v2

    or-long/2addr v0, v2

    :goto_2
    add-int/lit8 v2, v11, 0x1

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    shl-long/2addr v2, v10

    or-long v6, v0, v2

    .line 369
    sget-object v0, Ljava8/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/Phaser;->STATE:J

    move-object/from16 v1, p0

    move-wide v4, v15

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    .line 370
    invoke-direct {v8, v11}, Ljava8/util/concurrent/Phaser;->releaseWaiters(I)V

    goto :goto_3

    :cond_6
    if-nez v2, :cond_7

    .line 373
    iget-object v0, v8, Ljava8/util/concurrent/Phaser;->parent:Ljava8/util/concurrent/Phaser;

    const v1, 0x10001

    invoke-direct {v0, v1}, Ljava8/util/concurrent/Phaser;->doArrive(I)I

    move-result v11

    .line 374
    sget-object v0, Ljava8/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v5, Ljava8/util/concurrent/Phaser;->STATE:J

    or-long v9, v15, v3

    move-object/from16 v1, p0

    move-wide v2, v5

    move-wide v4, v15

    move-wide v6, v9

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    goto :goto_3

    .line 377
    :cond_7
    iget-object v0, v8, Ljava8/util/concurrent/Phaser;->parent:Ljava8/util/concurrent/Phaser;

    invoke-direct {v0, v12}, Ljava8/util/concurrent/Phaser;->doArrive(I)I

    move-result v11

    :cond_8
    :goto_3
    return v11

    .line 355
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v4, v5}, Ljava8/util/concurrent/Phaser;->badArrive(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private doRegister(I)I
    .locals 14

    int-to-long v0, p1

    const/16 v2, 0x10

    shl-long v2, v0, v2

    or-long/2addr v0, v2

    .line 393
    iget-object v2, p0, Ljava8/util/concurrent/Phaser;->parent:Ljava8/util/concurrent/Phaser;

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 396
    iget-wide v3, p0, Ljava8/util/concurrent/Phaser;->state:J

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Ljava8/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v3

    :goto_1
    move-wide v9, v3

    long-to-int v3, v9

    ushr-int/lit8 v4, v3, 0x10

    const v5, 0xffff

    and-int v6, v3, v5

    sub-int/2addr v5, v4

    if-gt p1, v5, :cond_a

    const/16 v4, 0x20

    ushr-long v7, v9, v4

    long-to-int v13, v7

    if-gez v13, :cond_2

    goto :goto_3

    :cond_2
    const/4 v5, 0x1

    if-eq v3, v5, :cond_5

    if-eqz v2, :cond_3

    .line 406
    invoke-direct {p0}, Ljava8/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v3

    cmp-long v3, v3, v9

    if-nez v3, :cond_0

    :cond_3
    if-nez v6, :cond_4

    .line 408
    iget-object v3, p0, Ljava8/util/concurrent/Phaser;->root:Ljava8/util/concurrent/Phaser;

    const/4 v4, 0x0

    invoke-direct {v3, v13, v4}, Ljava8/util/concurrent/Phaser;->internalAwaitAdvance(ILjava8/util/concurrent/Phaser$QNode;)I

    goto :goto_0

    .line 409
    :cond_4
    sget-object v5, Ljava8/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v7, Ljava8/util/concurrent/Phaser;->STATE:J

    add-long v11, v9, v0

    move-object v6, p0

    invoke-virtual/range {v5 .. v12}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    int-to-long v5, v13

    shl-long v3, v5, v4

    or-long v11, v3, v0

    .line 415
    sget-object v5, Ljava8/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v7, Ljava8/util/concurrent/Phaser;->STATE:J

    move-object v6, p0

    invoke-virtual/range {v5 .. v12}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_3

    .line 419
    :cond_6
    monitor-enter p0

    .line 420
    :try_start_0
    iget-wide v6, p0, Ljava8/util/concurrent/Phaser;->state:J

    cmp-long v3, v6, v9

    if-nez v3, :cond_9

    .line 421
    invoke-direct {v2, v5}, Ljava8/util/concurrent/Phaser;->doRegister(I)I

    move-result v13

    if-gez v13, :cond_7

    .line 423
    monitor-exit p0

    goto :goto_3

    .line 427
    :cond_7
    :goto_2
    sget-object v5, Ljava8/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v7, Ljava8/util/concurrent/Phaser;->STATE:J

    int-to-long v2, v13

    shl-long/2addr v2, v4

    or-long v11, v2, v0

    move-object v6, p0

    .line 428
    invoke-virtual/range {v5 .. v12}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    if-nez p1, :cond_8

    .line 430
    iget-wide v9, p0, Ljava8/util/concurrent/Phaser;->state:J

    .line 431
    iget-object p1, p0, Ljava8/util/concurrent/Phaser;->root:Ljava8/util/concurrent/Phaser;

    iget-wide v2, p1, Ljava8/util/concurrent/Phaser;->state:J

    ushr-long/2addr v2, v4

    long-to-int v13, v2

    goto :goto_2

    .line 433
    :cond_8
    monitor-exit p0

    :goto_3
    return v13

    .line 435
    :cond_9
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 401
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v9, v10}, Ljava8/util/concurrent/Phaser;->badRegister(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private internalAwaitAdvance(ILjava8/util/concurrent/Phaser$QNode;)I
    .locals 11

    add-int/lit8 v0, p1, -0x1

    .line 996
    invoke-direct {p0, v0}, Ljava8/util/concurrent/Phaser;->releaseWaiters(I)V

    .line 999
    sget v0, Ljava8/util/concurrent/Phaser;->SPINS_PER_ARRIVAL:I

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .line 1002
    :cond_0
    :goto_0
    iget-wide v3, p0, Ljava8/util/concurrent/Phaser;->state:J

    const/16 v5, 0x20

    ushr-long v6, v3, v5

    long-to-int v6, v6

    if-ne v6, p1, :cond_9

    if-nez p2, :cond_4

    long-to-int v3, v3

    const v4, 0xffff

    and-int/2addr v3, v4

    if-eq v3, v1, :cond_2

    .line 1005
    sget v1, Ljava8/util/concurrent/Phaser;->NCPU:I

    if-ge v3, v1, :cond_1

    .line 1007
    sget v1, Ljava8/util/concurrent/Phaser;->SPINS_PER_ARRIVAL:I

    add-int/2addr v2, v1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v3

    .line 1008
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    .line 1010
    :cond_3
    new-instance p2, Ljava8/util/concurrent/Phaser$QNode;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v4, p2

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v4 .. v10}, Ljava8/util/concurrent/Phaser$QNode;-><init>(Ljava8/util/concurrent/Phaser;IZZJ)V

    .line 1011
    iput-boolean v3, p2, Ljava8/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    goto :goto_0

    .line 1014
    :cond_4
    invoke-virtual {p2}, Ljava8/util/concurrent/Phaser$QNode;->isReleasable()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    if-nez v0, :cond_8

    and-int/lit8 v3, p1, 0x1

    if-nez v3, :cond_6

    .line 1017
    iget-object v3, p0, Ljava8/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_2

    :cond_6
    iget-object v3, p0, Ljava8/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1018
    :goto_2
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava8/util/concurrent/Phaser$QNode;

    iput-object v4, p2, Ljava8/util/concurrent/Phaser$QNode;->next:Ljava8/util/concurrent/Phaser$QNode;

    if-eqz v4, :cond_7

    .line 1019
    iget v6, v4, Ljava8/util/concurrent/Phaser$QNode;->phase:I

    if-ne v6, p1, :cond_0

    :cond_7
    iget-wide v6, p0, Ljava8/util/concurrent/Phaser;->state:J

    ushr-long v5, v6, v5

    long-to-int v5, v5

    if-ne v5, p1, :cond_0

    .line 1021
    invoke-virtual {v3, v4, p2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 1025
    :cond_8
    :try_start_0
    invoke-static {p2}, Ljava8/util/concurrent/ForkJoinPool;->managedBlock(Ljava8/util/concurrent/ForkJoinPool$ManagedBlocker;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v3, 0x1

    .line 1027
    iput-boolean v3, p2, Ljava8/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    goto :goto_0

    :cond_9
    :goto_3
    if-eqz p2, :cond_c

    .line 1033
    iget-object v0, p2, Ljava8/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 1034
    iput-object v0, p2, Ljava8/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    .line 1035
    :cond_a
    iget-boolean v0, p2, Ljava8/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    if-eqz v0, :cond_b

    iget-boolean p2, p2, Ljava8/util/concurrent/Phaser$QNode;->interruptible:Z

    if-nez p2, :cond_b

    .line 1036
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    :cond_b
    if-ne v6, p1, :cond_c

    .line 1037
    iget-wide v0, p0, Ljava8/util/concurrent/Phaser;->state:J

    ushr-long/2addr v0, v5

    long-to-int v6, v0

    if-ne v6, p1, :cond_c

    .line 1038
    invoke-direct {p0, p1}, Ljava8/util/concurrent/Phaser;->abortWait(I)I

    move-result p1

    return p1

    .line 1040
    :cond_c
    invoke-direct {p0, p1}, Ljava8/util/concurrent/Phaser;->releaseWaiters(I)V

    return v6
.end method

.method private static partiesOf(J)I
    .locals 0

    long-to-int p0, p0

    ushr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method private static phaseOf(J)I
    .locals 1

    const/16 v0, 0x20

    ushr-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method private reconcileState()J
    .locals 13

    .line 451
    iget-object v0, p0, Ljava8/util/concurrent/Phaser;->root:Ljava8/util/concurrent/Phaser;

    .line 452
    iget-wide v1, p0, Ljava8/util/concurrent/Phaser;->state:J

    if-eq v0, p0, :cond_4

    move-wide v7, v1

    .line 456
    :goto_0
    iget-wide v1, v0, Ljava8/util/concurrent/Phaser;->state:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    ushr-long v4, v7, v3

    long-to-int v2, v4

    if-eq v1, v2, :cond_3

    sget-object v2, Ljava8/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v5, Ljava8/util/concurrent/Phaser;->STATE:J

    int-to-long v9, v1

    shl-long v3, v9, v3

    if-gez v1, :cond_0

    const-wide v9, 0xffffffffL

    and-long/2addr v9, v7

    goto :goto_1

    :cond_0
    long-to-int v1, v7

    ushr-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_1

    const-wide/16 v9, 0x1

    goto :goto_1

    :cond_1
    const-wide v9, 0xffff0000L

    and-long/2addr v9, v7

    int-to-long v11, v1

    or-long/2addr v9, v11

    :goto_1
    or-long v11, v3, v9

    move-object v3, v2

    move-object v4, p0

    move-wide v9, v11

    .line 459
    invoke-virtual/range {v3 .. v10}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 464
    iget-wide v7, p0, Ljava8/util/concurrent/Phaser;->state:J

    goto :goto_0

    :cond_2
    move-wide v1, v11

    goto :goto_2

    :cond_3
    move-wide v1, v7

    :cond_4
    :goto_2
    return-wide v1
.end method

.method private releaseWaiters(I)V
    .locals 5

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    .line 935
    iget-object p1, p0, Ljava8/util/concurrent/Phaser;->evenQ:Ljava/util/concurrent/atomic/AtomicReference;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ljava8/util/concurrent/Phaser;->oddQ:Ljava/util/concurrent/atomic/AtomicReference;

    .line 936
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/concurrent/Phaser$QNode;

    if-eqz v0, :cond_2

    iget v1, v0, Ljava8/util/concurrent/Phaser$QNode;->phase:I

    iget-object v2, p0, Ljava8/util/concurrent/Phaser;->root:Ljava8/util/concurrent/Phaser;

    iget-wide v2, v2, Ljava8/util/concurrent/Phaser;->state:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    if-eq v1, v2, :cond_2

    .line 938
    iget-object v1, v0, Ljava8/util/concurrent/Phaser$QNode;->next:Ljava8/util/concurrent/Phaser$QNode;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Ljava8/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 940
    iput-object v2, v0, Ljava8/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    .line 941
    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private stateToString(J)Ljava/lang/String;
    .locals 2

    .line 921
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[phase = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 922
    invoke-static {p1, p2}, Ljava8/util/concurrent/Phaser;->phaseOf(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " parties = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 923
    invoke-static {p1, p2}, Ljava8/util/concurrent/Phaser;->partiesOf(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " arrived = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    invoke-static {p1, p2}, Ljava8/util/concurrent/Phaser;->arrivedOf(J)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static unarrivedOf(J)I
    .locals 0

    long-to-int p0, p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const p1, 0xffff

    and-int/2addr p0, p1

    :goto_0
    return p0
.end method


# virtual methods
.method public arrive()I
    .locals 1

    const/4 v0, 0x1

    .line 595
    invoke-direct {p0, v0}, Ljava8/util/concurrent/Phaser;->doArrive(I)I

    move-result v0

    return v0
.end method

.method public arriveAndAwaitAdvance()I
    .locals 18

    move-object/from16 v8, p0

    .line 638
    iget-object v9, v8, Ljava8/util/concurrent/Phaser;->root:Ljava8/util/concurrent/Phaser;

    :cond_0
    if-ne v9, v8, :cond_1

    .line 640
    iget-wide v0, v8, Ljava8/util/concurrent/Phaser;->state:J

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p0}, Ljava8/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    :goto_0
    move-wide v4, v0

    const/16 v10, 0x20

    ushr-long v0, v4, v10

    long-to-int v11, v0

    if-gez v11, :cond_2

    return v11

    :cond_2
    long-to-int v0, v4

    const/4 v12, 0x1

    if-ne v0, v12, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const v1, 0xffff

    and-int/2addr v0, v1

    :goto_1
    move v13, v0

    if-lez v13, :cond_9

    .line 648
    sget-object v0, Ljava8/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/Phaser;->STATE:J

    const-wide/16 v14, 0x1

    sub-long v16, v4, v14

    move-object/from16 v1, p0

    move-wide/from16 v6, v16

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    if-le v13, v12, :cond_4

    const/4 v0, 0x0

    .line 650
    invoke-direct {v9, v11, v0}, Ljava8/util/concurrent/Phaser;->internalAwaitAdvance(ILjava8/util/concurrent/Phaser$QNode;)I

    move-result v0

    return v0

    :cond_4
    if-eq v9, v8, :cond_5

    .line 652
    iget-object v0, v8, Ljava8/util/concurrent/Phaser;->parent:Ljava8/util/concurrent/Phaser;

    invoke-virtual {v0}, Ljava8/util/concurrent/Phaser;->arriveAndAwaitAdvance()I

    move-result v0

    return v0

    :cond_5
    const-wide v0, 0xffff0000L

    and-long v0, v16, v0

    long-to-int v2, v0

    ushr-int/lit8 v2, v2, 0x10

    .line 655
    invoke-virtual {v8, v11, v2}, Ljava8/util/concurrent/Phaser;->onAdvance(II)Z

    move-result v3

    if-eqz v3, :cond_6

    const-wide/high16 v2, -0x8000000000000000L

    or-long/2addr v0, v2

    goto :goto_2

    :cond_6
    if-nez v2, :cond_7

    or-long/2addr v0, v14

    goto :goto_2

    :cond_7
    int-to-long v2, v2

    or-long/2addr v0, v2

    :goto_2
    add-int/lit8 v2, v11, 0x1

    const v3, 0x7fffffff

    and-int v9, v2, v3

    int-to-long v2, v9

    shl-long/2addr v2, v10

    or-long v6, v0, v2

    .line 663
    sget-object v0, Ljava8/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/Phaser;->STATE:J

    move-object/from16 v1, p0

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-nez v0, :cond_8

    .line 664
    iget-wide v0, v8, Ljava8/util/concurrent/Phaser;->state:J

    ushr-long/2addr v0, v10

    long-to-int v0, v0

    return v0

    .line 665
    :cond_8
    invoke-direct {v8, v11}, Ljava8/util/concurrent/Phaser;->releaseWaiters(I)V

    return v9

    .line 647
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v4, v5}, Ljava8/util/concurrent/Phaser;->badArrive(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public arriveAndDeregister()I
    .locals 1

    const v0, 0x10001

    .line 615
    invoke-direct {p0, v0}, Ljava8/util/concurrent/Phaser;->doArrive(I)I

    move-result v0

    return v0
.end method

.method public awaitAdvance(I)I
    .locals 4

    .line 684
    iget-object v0, p0, Ljava8/util/concurrent/Phaser;->root:Ljava8/util/concurrent/Phaser;

    if-ne v0, p0, :cond_0

    .line 685
    iget-wide v1, p0, Ljava8/util/concurrent/Phaser;->state:J

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ljava8/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v1

    :goto_0
    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    if-gez p1, :cond_1

    return p1

    :cond_1
    if-ne v1, p1, :cond_2

    const/4 v1, 0x0

    .line 690
    invoke-direct {v0, p1, v1}, Ljava8/util/concurrent/Phaser;->internalAwaitAdvance(ILjava8/util/concurrent/Phaser$QNode;)I

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public awaitAdvanceInterruptibly(I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 711
    iget-object v0, p0, Ljava8/util/concurrent/Phaser;->root:Ljava8/util/concurrent/Phaser;

    if-ne v0, p0, :cond_0

    .line 712
    iget-wide v1, p0, Ljava8/util/concurrent/Phaser;->state:J

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ljava8/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v1

    :goto_0
    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    if-gez p1, :cond_1

    return p1

    :cond_1
    if-ne v1, p1, :cond_3

    .line 717
    new-instance v1, Ljava8/util/concurrent/Phaser$QNode;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v8}, Ljava8/util/concurrent/Phaser$QNode;-><init>(Ljava8/util/concurrent/Phaser;IZZJ)V

    .line 718
    invoke-direct {v0, p1, v1}, Ljava8/util/concurrent/Phaser;->internalAwaitAdvance(ILjava8/util/concurrent/Phaser$QNode;)I

    move-result p1

    .line 719
    iget-boolean v0, v1, Ljava8/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    if-nez v0, :cond_2

    goto :goto_1

    .line 720
    :cond_2
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    :cond_3
    move p1, v1

    :goto_1
    return p1
.end method

.method public awaitAdvanceInterruptibly(IJLjava/util/concurrent/TimeUnit;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 748
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v5

    .line 749
    iget-object p2, p0, Ljava8/util/concurrent/Phaser;->root:Ljava8/util/concurrent/Phaser;

    if-ne p2, p0, :cond_0

    .line 750
    iget-wide p3, p0, Ljava8/util/concurrent/Phaser;->state:J

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Ljava8/util/concurrent/Phaser;->reconcileState()J

    move-result-wide p3

    :goto_0
    const/16 v0, 0x20

    ushr-long/2addr p3, v0

    long-to-int p3, p3

    if-gez p1, :cond_1

    return p1

    :cond_1
    if-ne p3, p1, :cond_4

    .line 755
    new-instance p3, Ljava8/util/concurrent/Phaser$QNode;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p3

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Ljava8/util/concurrent/Phaser$QNode;-><init>(Ljava8/util/concurrent/Phaser;IZZJ)V

    .line 756
    invoke-direct {p2, p1, p3}, Ljava8/util/concurrent/Phaser;->internalAwaitAdvance(ILjava8/util/concurrent/Phaser$QNode;)I

    move-result p2

    .line 757
    iget-boolean p3, p3, Ljava8/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    if-nez p3, :cond_3

    if-eq p2, p1, :cond_2

    goto :goto_1

    .line 760
    :cond_2
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1

    .line 758
    :cond_3
    new-instance p1, Ljava/lang/InterruptedException;

    invoke-direct {p1}, Ljava/lang/InterruptedException;-><init>()V

    throw p1

    :cond_4
    move p2, p3

    :goto_1
    return p2
.end method

.method public bulkRegister(I)I
    .locals 0

    if-ltz p1, :cond_1

    if-nez p1, :cond_0

    .line 578
    invoke-virtual {p0}, Ljava8/util/concurrent/Phaser;->getPhase()I

    move-result p1

    return p1

    .line 579
    :cond_0
    invoke-direct {p0, p1}, Ljava8/util/concurrent/Phaser;->doRegister(I)I

    move-result p1

    return p1

    .line 576
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public forceTermination()V
    .locals 9

    .line 776
    iget-object v8, p0, Ljava8/util/concurrent/Phaser;->root:Ljava8/util/concurrent/Phaser;

    .line 778
    :cond_0
    iget-wide v4, v8, Ljava8/util/concurrent/Phaser;->state:J

    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_1

    .line 779
    sget-object v0, Ljava8/util/concurrent/Phaser;->U:Lsun/misc/Unsafe;

    sget-wide v2, Ljava8/util/concurrent/Phaser;->STATE:J

    const-wide/high16 v6, -0x8000000000000000L

    or-long/2addr v6, v4

    move-object v1, v8

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 781
    invoke-direct {p0, v0}, Ljava8/util/concurrent/Phaser;->releaseWaiters(I)V

    const/4 v0, 0x1

    .line 782
    invoke-direct {p0, v0}, Ljava8/util/concurrent/Phaser;->releaseWaiters(I)V

    return-void

    :cond_1
    return-void
.end method

.method public getArrivedParties()I
    .locals 2

    .line 818
    invoke-direct {p0}, Ljava8/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/concurrent/Phaser;->arrivedOf(J)I

    move-result v0

    return v0
.end method

.method public getParent()Ljava8/util/concurrent/Phaser;
    .locals 1

    .line 838
    iget-object v0, p0, Ljava8/util/concurrent/Phaser;->parent:Ljava8/util/concurrent/Phaser;

    return-object v0
.end method

.method public final getPhase()I
    .locals 3

    .line 798
    iget-object v0, p0, Ljava8/util/concurrent/Phaser;->root:Ljava8/util/concurrent/Phaser;

    iget-wide v0, v0, Ljava8/util/concurrent/Phaser;->state:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getRegisteredParties()I
    .locals 2

    .line 807
    iget-wide v0, p0, Ljava8/util/concurrent/Phaser;->state:J

    invoke-static {v0, v1}, Ljava8/util/concurrent/Phaser;->partiesOf(J)I

    move-result v0

    return v0
.end method

.method public getRoot()Ljava8/util/concurrent/Phaser;
    .locals 1

    .line 848
    iget-object v0, p0, Ljava8/util/concurrent/Phaser;->root:Ljava8/util/concurrent/Phaser;

    return-object v0
.end method

.method public getUnarrivedParties()I
    .locals 2

    .line 829
    invoke-direct {p0}, Ljava8/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava8/util/concurrent/Phaser;->unarrivedOf(J)I

    move-result v0

    return v0
.end method

.method public isTerminated()Z
    .locals 4

    .line 857
    iget-object v0, p0, Ljava8/util/concurrent/Phaser;->root:Ljava8/util/concurrent/Phaser;

    iget-wide v0, v0, Ljava8/util/concurrent/Phaser;->state:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAdvance(II)Z
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public register()I
    .locals 1

    const/4 v0, 0x1

    .line 552
    invoke-direct {p0, v0}, Ljava8/util/concurrent/Phaser;->doRegister(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 914
    invoke-direct {p0}, Ljava8/util/concurrent/Phaser;->reconcileState()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava8/util/concurrent/Phaser;->stateToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
