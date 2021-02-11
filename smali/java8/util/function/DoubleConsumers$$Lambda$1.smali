.class final synthetic Ljava8/util/function/DoubleConsumers$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/DoubleConsumer;


# instance fields
.field private final arg$1:Ljava8/util/function/DoubleConsumer;

.field private final arg$2:Ljava8/util/function/DoubleConsumer;


# direct methods
.method private constructor <init>(Ljava8/util/function/DoubleConsumer;Ljava8/util/function/DoubleConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/function/DoubleConsumers$$Lambda$1;->arg$1:Ljava8/util/function/DoubleConsumer;

    iput-object p2, p0, Ljava8/util/function/DoubleConsumers$$Lambda$1;->arg$2:Ljava8/util/function/DoubleConsumer;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/DoubleConsumer;Ljava8/util/function/DoubleConsumer;)Ljava8/util/function/DoubleConsumer;
    .locals 1

    new-instance v0, Ljava8/util/function/DoubleConsumers$$Lambda$1;

    invoke-direct {v0, p0, p1}, Ljava8/util/function/DoubleConsumers$$Lambda$1;-><init>(Ljava8/util/function/DoubleConsumer;Ljava8/util/function/DoubleConsumer;)V

    return-object v0
.end method


# virtual methods
.method public accept(D)V
    .locals 2

    iget-object v0, p0, Ljava8/util/function/DoubleConsumers$$Lambda$1;->arg$1:Ljava8/util/function/DoubleConsumer;

    iget-object v1, p0, Ljava8/util/function/DoubleConsumers$$Lambda$1;->arg$2:Ljava8/util/function/DoubleConsumer;

    invoke-static {v0, v1, p1, p2}, Ljava8/util/function/DoubleConsumers;->lambda$andThen$150(Ljava8/util/function/DoubleConsumer;Ljava8/util/function/DoubleConsumer;D)V

    return-void
.end method
