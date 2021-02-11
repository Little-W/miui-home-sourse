.class public final Ljava8/util/function/IntUnaryOperators;
.super Ljava/lang/Object;
.source "IntUnaryOperators.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static andThen(Ljava8/util/function/IntUnaryOperator;Ljava8/util/function/IntUnaryOperator;)Ljava8/util/function/IntUnaryOperator;
    .locals 0

    .line 72
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {p1, p0}, Ljava8/util/function/IntUnaryOperators$$Lambda$2;->lambdaFactory$(Ljava8/util/function/IntUnaryOperator;Ljava8/util/function/IntUnaryOperator;)Ljava8/util/function/IntUnaryOperator;

    move-result-object p0

    return-object p0
.end method

.method public static compose(Ljava8/util/function/IntUnaryOperator;Ljava8/util/function/IntUnaryOperator;)Ljava8/util/function/IntUnaryOperator;
    .locals 0

    .line 51
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {p0, p1}, Ljava8/util/function/IntUnaryOperators$$Lambda$1;->lambdaFactory$(Ljava8/util/function/IntUnaryOperator;Ljava8/util/function/IntUnaryOperator;)Ljava8/util/function/IntUnaryOperator;

    move-result-object p0

    return-object p0
.end method

.method public static identity()Ljava8/util/function/IntUnaryOperator;
    .locals 1

    .line 83
    invoke-static {}, Ljava8/util/function/IntUnaryOperators$$Lambda$3;->lambdaFactory$()Ljava8/util/function/IntUnaryOperator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$andThen$160(Ljava8/util/function/IntUnaryOperator;Ljava8/util/function/IntUnaryOperator;I)I
    .locals 0

    .line 74
    invoke-interface {p1, p2}, Ljava8/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p1

    invoke-interface {p0, p1}, Ljava8/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$compose$159(Ljava8/util/function/IntUnaryOperator;Ljava8/util/function/IntUnaryOperator;I)I
    .locals 0

    .line 53
    invoke-interface {p1, p2}, Ljava8/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p1

    invoke-interface {p0, p1}, Ljava8/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$identity$161(I)I
    .locals 0

    return p0
.end method
