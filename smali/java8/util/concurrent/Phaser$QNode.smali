.class final Ljava8/util/concurrent/Phaser$QNode;
.super Ljava/lang/Object;
.source "Phaser.java"

# interfaces
.implements Ljava8/util/concurrent/ForkJoinPool$ManagedBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/concurrent/Phaser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QNode"
.end annotation


# instance fields
.field final deadline:J

.field final interruptible:Z

.field nanos:J

.field next:Ljava8/util/concurrent/Phaser$QNode;

.field final phase:I

.field final phaser:Ljava8/util/concurrent/Phaser;

.field volatile thread:Ljava/lang/Thread;

.field final timed:Z

.field wasInterrupted:Z


# direct methods
.method constructor <init>(Ljava8/util/concurrent/Phaser;IZZJ)V
    .locals 0

    .line 1059
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1060
    iput-object p1, p0, Ljava8/util/concurrent/Phaser$QNode;->phaser:Ljava8/util/concurrent/Phaser;

    .line 1061
    iput p2, p0, Ljava8/util/concurrent/Phaser$QNode;->phase:I

    .line 1062
    iput-boolean p3, p0, Ljava8/util/concurrent/Phaser$QNode;->interruptible:Z

    .line 1063
    iput-wide p5, p0, Ljava8/util/concurrent/Phaser$QNode;->nanos:J

    .line 1064
    iput-boolean p4, p0, Ljava8/util/concurrent/Phaser$QNode;->timed:Z

    if-eqz p4, :cond_0

    .line 1065
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    add-long/2addr p1, p5

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    iput-wide p1, p0, Ljava8/util/concurrent/Phaser$QNode;->deadline:J

    .line 1066
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public block()Z
    .locals 2

    .line 1091
    :goto_0
    invoke-virtual {p0}, Ljava8/util/concurrent/Phaser$QNode;->isReleasable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1092
    iget-boolean v0, p0, Ljava8/util/concurrent/Phaser$QNode;->timed:Z

    if-eqz v0, :cond_0

    .line 1093
    iget-wide v0, p0, Ljava8/util/concurrent/Phaser$QNode;->nanos:J

    invoke-static {p0, v0, v1}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    goto :goto_0

    .line 1095
    :cond_0
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isReleasable()Z
    .locals 10

    .line 1070
    iget-object v0, p0, Ljava8/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1072
    :cond_0
    iget-object v0, p0, Ljava8/util/concurrent/Phaser$QNode;->phaser:Ljava8/util/concurrent/Phaser;

    invoke-virtual {v0}, Ljava8/util/concurrent/Phaser;->getPhase()I

    move-result v0

    iget v2, p0, Ljava8/util/concurrent/Phaser$QNode;->phase:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    .line 1073
    iput-object v3, p0, Ljava8/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    return v1

    .line 1076
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1077
    iput-boolean v1, p0, Ljava8/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    .line 1078
    :cond_2
    iget-boolean v0, p0, Ljava8/util/concurrent/Phaser$QNode;->wasInterrupted:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Ljava8/util/concurrent/Phaser$QNode;->interruptible:Z

    if-eqz v0, :cond_3

    .line 1079
    iput-object v3, p0, Ljava8/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    return v1

    .line 1082
    :cond_3
    iget-boolean v0, p0, Ljava8/util/concurrent/Phaser$QNode;->timed:Z

    if-eqz v0, :cond_5

    iget-wide v4, p0, Ljava8/util/concurrent/Phaser$QNode;->nanos:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    iget-wide v4, p0, Ljava8/util/concurrent/Phaser$QNode;->deadline:J

    .line 1083
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v4, v8

    iput-wide v4, p0, Ljava8/util/concurrent/Phaser$QNode;->nanos:J

    cmp-long v0, v4, v6

    if-gtz v0, :cond_5

    .line 1084
    :cond_4
    iput-object v3, p0, Ljava8/util/concurrent/Phaser$QNode;->thread:Ljava/lang/Thread;

    return v1

    :cond_5
    const/4 v0, 0x0

    return v0
.end method
