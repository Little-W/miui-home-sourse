.class final Lio/reactivex2/internal/schedulers/ComputationScheduler$PoolWorker;
.super Lio/reactivex2/internal/schedulers/NewThreadWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex2/internal/schedulers/ComputationScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PoolWorker"
.end annotation


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/reactivex2/internal/schedulers/NewThreadWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method
