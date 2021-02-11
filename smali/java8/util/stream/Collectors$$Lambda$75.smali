.class final synthetic Ljava8/util/stream/Collectors$$Lambda$75;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/BiConsumer;


# instance fields
.field private final arg$1:Ljava8/util/function/ToIntFunction;


# direct methods
.method private constructor <init>(Ljava8/util/function/ToIntFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Collectors$$Lambda$75;->arg$1:Ljava8/util/function/ToIntFunction;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/ToIntFunction;)Ljava8/util/function/BiConsumer;
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$75;

    invoke-direct {v0, p0}, Ljava8/util/stream/Collectors$$Lambda$75;-><init>(Ljava8/util/function/ToIntFunction;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/Collectors$$Lambda$75;->arg$1:Ljava8/util/function/ToIntFunction;

    check-cast p1, Ljava8/util/IntSummaryStatistics;

    invoke-static {v0, p1, p2}, Ljava8/util/stream/Collectors;->lambda$summarizingInt$121(Ljava8/util/function/ToIntFunction;Ljava8/util/IntSummaryStatistics;Ljava/lang/Object;)V

    return-void
.end method
