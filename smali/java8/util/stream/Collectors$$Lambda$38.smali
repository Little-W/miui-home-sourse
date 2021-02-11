.class final synthetic Ljava8/util/stream/Collectors$$Lambda$38;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/BiConsumer;


# instance fields
.field private final arg$1:Ljava8/util/function/ToDoubleFunction;


# direct methods
.method private constructor <init>(Ljava8/util/function/ToDoubleFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/Collectors$$Lambda$38;->arg$1:Ljava8/util/function/ToDoubleFunction;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/ToDoubleFunction;)Ljava8/util/function/BiConsumer;
    .locals 1

    new-instance v0, Ljava8/util/stream/Collectors$$Lambda$38;

    invoke-direct {v0, p0}, Ljava8/util/stream/Collectors$$Lambda$38;-><init>(Ljava8/util/function/ToDoubleFunction;)V

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/Collectors$$Lambda$38;->arg$1:Ljava8/util/function/ToDoubleFunction;

    check-cast p1, [D

    invoke-static {v0, p1, p2}, Ljava8/util/stream/Collectors;->lambda$summingDouble$80(Ljava8/util/function/ToDoubleFunction;[DLjava/lang/Object;)V

    return-void
.end method
