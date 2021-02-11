.class final synthetic Ljava8/util/function/LongUnaryOperators$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/LongUnaryOperator;


# instance fields
.field private final arg$1:Ljava8/util/function/LongUnaryOperator;

.field private final arg$2:Ljava8/util/function/LongUnaryOperator;


# direct methods
.method private constructor <init>(Ljava8/util/function/LongUnaryOperator;Ljava8/util/function/LongUnaryOperator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/function/LongUnaryOperators$$Lambda$1;->arg$1:Ljava8/util/function/LongUnaryOperator;

    iput-object p2, p0, Ljava8/util/function/LongUnaryOperators$$Lambda$1;->arg$2:Ljava8/util/function/LongUnaryOperator;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/LongUnaryOperator;Ljava8/util/function/LongUnaryOperator;)Ljava8/util/function/LongUnaryOperator;
    .locals 1

    new-instance v0, Ljava8/util/function/LongUnaryOperators$$Lambda$1;

    invoke-direct {v0, p0, p1}, Ljava8/util/function/LongUnaryOperators$$Lambda$1;-><init>(Ljava8/util/function/LongUnaryOperator;Ljava8/util/function/LongUnaryOperator;)V

    return-object v0
.end method


# virtual methods
.method public applyAsLong(J)J
    .locals 2

    iget-object v0, p0, Ljava8/util/function/LongUnaryOperators$$Lambda$1;->arg$1:Ljava8/util/function/LongUnaryOperator;

    iget-object v1, p0, Ljava8/util/function/LongUnaryOperators$$Lambda$1;->arg$2:Ljava8/util/function/LongUnaryOperator;

    invoke-static {v0, v1, p1, p2}, Ljava8/util/function/LongUnaryOperators;->lambda$compose$153(Ljava8/util/function/LongUnaryOperator;Ljava8/util/function/LongUnaryOperator;J)J

    move-result-wide p1

    return-wide p1
.end method
