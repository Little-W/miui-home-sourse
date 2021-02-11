.class final synthetic Ljava8/util/stream/DistinctOps$1$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field private final arg$1:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final arg$2:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/DistinctOps$1$$Lambda$4;->arg$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Ljava8/util/stream/DistinctOps$1$$Lambda$4;->arg$2:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentMap;)Ljava8/util/function/Consumer;
    .locals 1

    new-instance v0, Ljava8/util/stream/DistinctOps$1$$Lambda$4;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/DistinctOps$1$$Lambda$4;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentMap;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ljava8/util/stream/DistinctOps$1$$Lambda$4;->arg$1:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Ljava8/util/stream/DistinctOps$1$$Lambda$4;->arg$2:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, v1, p1}, Ljava8/util/stream/DistinctOps$1;->lambda$opEvaluateParallel$44(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V

    return-void
.end method
