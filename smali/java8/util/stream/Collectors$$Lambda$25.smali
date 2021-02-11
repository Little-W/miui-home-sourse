.class final synthetic Ljava8/util/stream/Collectors$$Lambda$25;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/BiConsumer;


# instance fields
.field private final arg$1:Ljava8/util/function/BiConsumer;

.field private final arg$2:Ljava8/util/function/Function;


# direct methods
.method private constructor <init>(Ljava8/util/function/BiConsumer;Ljava8/util/function/Function;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Collectors$$Lambda$25;->arg$1:Ljava8/util/function/BiConsumer;

    iput-object p2, p0, Ljava8/util/stream/Collectors$$Lambda$25;->arg$2:Ljava8/util/function/Function;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/BiConsumer;Ljava8/util/function/Function;)Ljava8/util/function/BiConsumer;
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$25;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/Collectors$$Lambda$25;-><init>(Ljava8/util/function/BiConsumer;Ljava8/util/function/Function;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ljava8/util/stream/Collectors$$Lambda$25;->arg$1:Ljava8/util/function/BiConsumer;

    iget-object v1, p0, Ljava8/util/stream/Collectors$$Lambda$25;->arg$2:Ljava8/util/function/Function;

    invoke-static {v0, v1, p1, p2}, Ljava8/util/stream/Collectors;->lambda$mapping$66(Ljava8/util/function/BiConsumer;Ljava8/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
