.class final synthetic Ljava8/util/function/LongConsumers$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/LongConsumer;


# instance fields
.field private final arg$1:Ljava8/util/function/LongConsumer;

.field private final arg$2:Ljava8/util/function/LongConsumer;


# direct methods
.method private constructor <init>(Ljava8/util/function/LongConsumer;Ljava8/util/function/LongConsumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/function/LongConsumers$$Lambda$1;->arg$1:Ljava8/util/function/LongConsumer;

    iput-object p2, p0, Ljava8/util/function/LongConsumers$$Lambda$1;->arg$2:Ljava8/util/function/LongConsumer;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/LongConsumer;Ljava8/util/function/LongConsumer;)Ljava8/util/function/LongConsumer;
    .locals 1

    new-instance v0, Ljava8/util/function/LongConsumers$$Lambda$1;

    invoke-direct {v0, p0, p1}, Ljava8/util/function/LongConsumers$$Lambda$1;-><init>(Ljava8/util/function/LongConsumer;Ljava8/util/function/LongConsumer;)V

    return-object v0
.end method


# virtual methods
.method public accept(J)V
    .locals 2

    iget-object v0, p0, Ljava8/util/function/LongConsumers$$Lambda$1;->arg$1:Ljava8/util/function/LongConsumer;

    iget-object v1, p0, Ljava8/util/function/LongConsumers$$Lambda$1;->arg$2:Ljava8/util/function/LongConsumer;

    invoke-static {v0, v1, p1, p2}, Ljava8/util/function/LongConsumers;->lambda$andThen$134(Ljava8/util/function/LongConsumer;Ljava8/util/function/LongConsumer;J)V

    return-void
.end method
