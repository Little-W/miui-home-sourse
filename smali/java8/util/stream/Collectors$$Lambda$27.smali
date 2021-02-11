.class final synthetic Ljava8/util/stream/Collectors$$Lambda$27;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/BiConsumer;


# instance fields
.field private final arg$1:Ljava8/util/function/Predicate;

.field private final arg$2:Ljava8/util/function/BiConsumer;


# direct methods
.method private constructor <init>(Ljava8/util/function/Predicate;Ljava8/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Collectors$$Lambda$27;->arg$1:Ljava8/util/function/Predicate;

    iput-object p2, p0, Ljava8/util/stream/Collectors$$Lambda$27;->arg$2:Ljava8/util/function/BiConsumer;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/Predicate;Ljava8/util/function/BiConsumer;)Ljava8/util/function/BiConsumer;
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$27;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/Collectors$$Lambda$27;-><init>(Ljava8/util/function/Predicate;Ljava8/util/function/BiConsumer;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ljava8/util/stream/Collectors$$Lambda$27;->arg$1:Ljava8/util/function/Predicate;

    iget-object v1, p0, Ljava8/util/stream/Collectors$$Lambda$27;->arg$2:Ljava8/util/function/BiConsumer;

    invoke-static {v0, v1, p1, p2}, Ljava8/util/stream/Collectors;->lambda$filtering$69(Ljava8/util/function/Predicate;Ljava8/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
