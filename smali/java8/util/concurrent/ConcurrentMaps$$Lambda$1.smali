.class final synthetic Ljava8/util/concurrent/ConcurrentMaps$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/BiConsumer;


# instance fields
.field private final arg$1:Ljava/util/concurrent/ConcurrentMap;

.field private final arg$2:Ljava8/util/function/BiFunction;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ConcurrentMap;Ljava8/util/function/BiFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/concurrent/ConcurrentMaps$$Lambda$1;->arg$1:Ljava/util/concurrent/ConcurrentMap;

    iput-object p2, p0, Ljava8/util/concurrent/ConcurrentMaps$$Lambda$1;->arg$2:Ljava8/util/function/BiFunction;

    return-void
.end method

.method public static lambdaFactory$(Ljava/util/concurrent/ConcurrentMap;Ljava8/util/function/BiFunction;)Ljava8/util/function/BiConsumer;
    .locals 1

    new-instance v0, Ljava8/util/concurrent/ConcurrentMaps$$Lambda$1;

    invoke-direct {v0, p0, p1}, Ljava8/util/concurrent/ConcurrentMaps$$Lambda$1;-><init>(Ljava/util/concurrent/ConcurrentMap;Ljava8/util/function/BiFunction;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ljava8/util/concurrent/ConcurrentMaps$$Lambda$1;->arg$1:Ljava/util/concurrent/ConcurrentMap;

    iget-object v1, p0, Ljava8/util/concurrent/ConcurrentMaps$$Lambda$1;->arg$2:Ljava8/util/function/BiFunction;

    invoke-static {v0, v1, p1, p2}, Ljava8/util/concurrent/ConcurrentMaps;->lambda$replaceAll$43(Ljava/util/concurrent/ConcurrentMap;Ljava8/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
