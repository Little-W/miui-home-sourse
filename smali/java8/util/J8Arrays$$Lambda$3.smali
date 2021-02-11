.class final synthetic Ljava8/util/J8Arrays$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/IntConsumer;


# instance fields
.field private final arg$1:[J

.field private final arg$2:Ljava8/util/function/IntToLongFunction;


# direct methods
.method private constructor <init>([JLjava8/util/function/IntToLongFunction;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/J8Arrays$$Lambda$3;->arg$1:[J

    iput-object p2, p0, Ljava8/util/J8Arrays$$Lambda$3;->arg$2:Ljava8/util/function/IntToLongFunction;

    return-void
.end method

.method public static lambdaFactory$([JLjava8/util/function/IntToLongFunction;)Ljava8/util/function/IntConsumer;
    .locals 1

    new-instance v0, Ljava8/util/J8Arrays$$Lambda$3;

    invoke-direct {v0, p0, p1}, Ljava8/util/J8Arrays$$Lambda$3;-><init>([JLjava8/util/function/IntToLongFunction;)V

    return-object v0
.end method


# virtual methods
.method public accept(I)V
    .locals 2

    iget-object v0, p0, Ljava8/util/J8Arrays$$Lambda$3;->arg$1:[J

    iget-object v1, p0, Ljava8/util/J8Arrays$$Lambda$3;->arg$2:Ljava8/util/function/IntToLongFunction;

    invoke-static {v0, v1, p1}, Ljava8/util/J8Arrays;->lambda$parallelSetAll$129([JLjava8/util/function/IntToLongFunction;I)V

    return-void
.end method
