.class final synthetic Ljava8/util/function/DoubleUnaryOperators$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/DoubleUnaryOperator;


# instance fields
.field private final arg$1:Ljava8/util/function/DoubleUnaryOperator;

.field private final arg$2:Ljava8/util/function/DoubleUnaryOperator;


# direct methods
.method private constructor <init>(Ljava8/util/function/DoubleUnaryOperator;Ljava8/util/function/DoubleUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/function/DoubleUnaryOperators$$Lambda$1;->arg$1:Ljava8/util/function/DoubleUnaryOperator;

    iput-object p2, p0, Ljava8/util/function/DoubleUnaryOperators$$Lambda$1;->arg$2:Ljava8/util/function/DoubleUnaryOperator;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/DoubleUnaryOperator;Ljava8/util/function/DoubleUnaryOperator;)Ljava8/util/function/DoubleUnaryOperator;
    .locals 1

    new-instance v0, Ljava8/util/function/DoubleUnaryOperators$$Lambda$1;

    invoke-direct {v0, p0, p1}, Ljava8/util/function/DoubleUnaryOperators$$Lambda$1;-><init>(Ljava8/util/function/DoubleUnaryOperator;Ljava8/util/function/DoubleUnaryOperator;)V

    return-object v0
.end method


# virtual methods
.method public applyAsDouble(D)D
    .locals 2

    iget-object v0, p0, Ljava8/util/function/DoubleUnaryOperators$$Lambda$1;->arg$1:Ljava8/util/function/DoubleUnaryOperator;

    iget-object v1, p0, Ljava8/util/function/DoubleUnaryOperators$$Lambda$1;->arg$2:Ljava8/util/function/DoubleUnaryOperator;

    invoke-static {v0, v1, p1, p2}, Ljava8/util/function/DoubleUnaryOperators;->lambda$compose$29(Ljava8/util/function/DoubleUnaryOperator;Ljava8/util/function/DoubleUnaryOperator;D)D

    move-result-wide p1

    return-wide p1
.end method
