.class final synthetic Ljava8/util/stream/Collectors$$Lambda$68;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Function;


# instance fields
.field private final arg$1:Ljava8/util/function/Function;


# direct methods
.method private constructor <init>(Ljava8/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Collectors$$Lambda$68;->arg$1:Ljava8/util/function/Function;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/Function;)Ljava8/util/function/Function;
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$68;

    invoke-direct {v0, p0}, Ljava8/util/stream/Collectors$$Lambda$68;-><init>(Ljava8/util/function/Function;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/Collectors$$Lambda$68;->arg$1:Ljava8/util/function/Function;

    check-cast p1, Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0, p1}, Ljava8/util/stream/Collectors;->lambda$groupingByConcurrent$114(Ljava8/util/function/Function;Ljava/util/concurrent/ConcurrentMap;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    return-object p1
.end method
