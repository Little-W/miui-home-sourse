.class final synthetic Ljava8/util/J8Arrays$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/IntConsumer;


# instance fields
.field private final arg$1:[I

.field private final arg$2:Ljava8/util/function/IntUnaryOperator;


# direct methods
.method private constructor <init>([ILjava8/util/function/IntUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/J8Arrays$$Lambda$2;->arg$1:[I

    iput-object p2, p0, Ljava8/util/J8Arrays$$Lambda$2;->arg$2:Ljava8/util/function/IntUnaryOperator;

    return-void
.end method

.method public static lambdaFactory$([ILjava8/util/function/IntUnaryOperator;)Ljava8/util/function/IntConsumer;
    .locals 1

    new-instance v0, Ljava8/util/J8Arrays$$Lambda$2;

    invoke-direct {v0, p0, p1}, Ljava8/util/J8Arrays$$Lambda$2;-><init>([ILjava8/util/function/IntUnaryOperator;)V

    return-object v0
.end method


# virtual methods
.method public accept(I)V
    .locals 2

    iget-object v0, p0, Ljava8/util/J8Arrays$$Lambda$2;->arg$1:[I

    iget-object v1, p0, Ljava8/util/J8Arrays$$Lambda$2;->arg$2:Ljava8/util/function/IntUnaryOperator;

    invoke-static {v0, v1, p1}, Ljava8/util/J8Arrays;->lambda$parallelSetAll$128([ILjava8/util/function/IntUnaryOperator;I)V

    return-void
.end method
