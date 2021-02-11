.class public final Ljava8/util/function/LongUnaryOperators;
.super Ljava/lang/Object;
.source "LongUnaryOperators.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static andThen(Ljava8/util/function/LongUnaryOperator;Ljava8/util/function/LongUnaryOperator;)Ljava8/util/function/LongUnaryOperator;
    .locals 0

    .line 72
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {p1, p0}, Ljava8/util/function/LongUnaryOperators$$Lambda$2;->lambdaFactory$(Ljava8/util/function/LongUnaryOperator;Ljava8/util/function/LongUnaryOperator;)Ljava8/util/function/LongUnaryOperator;

    move-result-object p0

    return-object p0
.end method

.method public static compose(Ljava8/util/function/LongUnaryOperator;Ljava8/util/function/LongUnaryOperator;)Ljava8/util/function/LongUnaryOperator;
    .locals 0

    .line 51
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {p0, p1}, Ljava8/util/function/LongUnaryOperators$$Lambda$1;->lambdaFactory$(Ljava8/util/function/LongUnaryOperator;Ljava8/util/function/LongUnaryOperator;)Ljava8/util/function/LongUnaryOperator;

    move-result-object p0

    return-object p0
.end method

.method public static identity()Ljava8/util/function/LongUnaryOperator;
    .locals 1

    .line 83
    invoke-static {}, Ljava8/util/function/LongUnaryOperators$$Lambda$3;->lambdaFactory$()Ljava8/util/function/LongUnaryOperator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$andThen$154(Ljava8/util/function/LongUnaryOperator;Ljava8/util/function/LongUnaryOperator;J)J
    .locals 0

    .line 74
    invoke-interface {p1, p2, p3}, Ljava8/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Ljava8/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic lambda$compose$153(Ljava8/util/function/LongUnaryOperator;Ljava8/util/function/LongUnaryOperator;J)J
    .locals 0

    .line 53
    invoke-interface {p1, p2, p3}, Ljava8/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide p1

    invoke-interface {p0, p1, p2}, Ljava8/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic lambda$identity$155(J)J
    .locals 0

    return-wide p0
.end method
