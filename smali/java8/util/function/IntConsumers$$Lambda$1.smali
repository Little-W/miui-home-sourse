.class final synthetic Ljava8/util/function/IntConsumers$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/IntConsumer;


# instance fields
.field private final arg$1:Ljava8/util/function/IntConsumer;

.field private final arg$2:Ljava8/util/function/IntConsumer;


# direct methods
.method private constructor <init>(Ljava8/util/function/IntConsumer;Ljava8/util/function/IntConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/function/IntConsumers$$Lambda$1;->arg$1:Ljava8/util/function/IntConsumer;

    iput-object p2, p0, Ljava8/util/function/IntConsumers$$Lambda$1;->arg$2:Ljava8/util/function/IntConsumer;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/IntConsumer;Ljava8/util/function/IntConsumer;)Ljava8/util/function/IntConsumer;
    .locals 1

    new-instance v0, Ljava8/util/function/IntConsumers$$Lambda$1;

    invoke-direct {v0, p0, p1}, Ljava8/util/function/IntConsumers$$Lambda$1;-><init>(Ljava8/util/function/IntConsumer;Ljava8/util/function/IntConsumer;)V

    return-object v0
.end method


# virtual methods
.method public accept(I)V
    .locals 2

    iget-object v0, p0, Ljava8/util/function/IntConsumers$$Lambda$1;->arg$1:Ljava8/util/function/IntConsumer;

    iget-object v1, p0, Ljava8/util/function/IntConsumers$$Lambda$1;->arg$2:Ljava8/util/function/IntConsumer;

    invoke-static {v0, v1, p1}, Ljava8/util/function/IntConsumers;->lambda$andThen$141(Ljava8/util/function/IntConsumer;Ljava8/util/function/IntConsumer;I)V

    return-void
.end method
