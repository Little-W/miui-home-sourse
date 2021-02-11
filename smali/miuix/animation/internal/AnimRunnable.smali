.class public Lmiuix/animation/internal/AnimRunnable;
.super Ljava/lang/Object;
.source "AnimRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mDeltaT:J

.field private mTargetRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmiuix/animation/IAnimTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalT:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized init(Lmiuix/animation/IAnimTarget;JJ)V
    .locals 1

    monitor-enter p0

    .line 19
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiuix/animation/internal/AnimRunnable;->mTargetRef:Ljava/lang/ref/WeakReference;

    .line 20
    iput-wide p2, p0, Lmiuix/animation/internal/AnimRunnable;->mTotalT:J

    .line 21
    iput-wide p4, p0, Lmiuix/animation/internal/AnimRunnable;->mDeltaT:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized run()V
    .locals 7

    monitor-enter p0

    .line 26
    :try_start_0
    iget-object v0, p0, Lmiuix/animation/internal/AnimRunnable;->mTargetRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lmiuix/animation/IAnimTarget;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 28
    monitor-exit p0

    return-void

    .line 30
    :cond_0
    :try_start_1
    invoke-static {}, Lmiuix/animation/internal/AnimRunner;->getInst()Lmiuix/animation/internal/AnimRunner;

    move-result-object v1

    iget-wide v3, p0, Lmiuix/animation/internal/AnimRunnable;->mTotalT:J

    iget-wide v5, p0, Lmiuix/animation/internal/AnimRunnable;->mDeltaT:J

    invoke-virtual/range {v1 .. v6}, Lmiuix/animation/internal/AnimRunner;->doAnimOnTarget(Lmiuix/animation/IAnimTarget;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
