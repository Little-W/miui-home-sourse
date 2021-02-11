.class final synthetic Ljava8/util/stream/LongPipeline$$Lambda$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/BinaryOperator;


# instance fields
.field private final arg$1:Ljava8/util/function/BiConsumer;


# direct methods
.method private constructor <init>(Ljava8/util/function/BiConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/LongPipeline$$Lambda$12;->arg$1:Ljava8/util/function/BiConsumer;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/BiConsumer;)Ljava8/util/function/BinaryOperator;
    .locals 1

    new-instance v0, Ljava8/util/stream/LongPipeline$$Lambda$12;

    invoke-direct {v0, p0}, Ljava8/util/stream/LongPipeline$$Lambda$12;-><init>(Ljava8/util/function/BiConsumer;)V

    return-object v0
.end method


# virtual methods
.method public apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljava8/util/stream/LongPipeline$$Lambda$12;->arg$1:Ljava8/util/function/BiConsumer;

    invoke-static {v0, p1, p2}, Ljava8/util/stream/LongPipeline;->lambda$collect$17(Ljava8/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
