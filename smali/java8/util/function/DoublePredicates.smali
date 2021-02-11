.class public final Ljava8/util/function/DoublePredicates;
.super Ljava/lang/Object;
.source "DoublePredicates.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static and(Ljava8/util/function/DoublePredicate;Ljava8/util/function/DoublePredicate;)Ljava8/util/function/DoublePredicate;
    .locals 0

    .line 54
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {p0, p1}, Ljava8/util/function/DoublePredicates$$Lambda$1;->lambdaFactory$(Ljava8/util/function/DoublePredicate;Ljava8/util/function/DoublePredicate;)Ljava8/util/function/DoublePredicate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$and$131(Ljava8/util/function/DoublePredicate;Ljava8/util/function/DoublePredicate;D)Z
    .locals 0

    .line 56
    invoke-interface {p0, p2, p3}, Ljava8/util/function/DoublePredicate;->test(D)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2, p3}, Ljava8/util/function/DoublePredicate;->test(D)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$negate$132(Ljava8/util/function/DoublePredicate;D)Z
    .locals 0

    .line 70
    invoke-interface {p0, p1, p2}, Ljava8/util/function/DoublePredicate;->test(D)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$or$133(Ljava8/util/function/DoublePredicate;Ljava8/util/function/DoublePredicate;D)Z
    .locals 0

    .line 94
    invoke-interface {p0, p2, p3}, Ljava8/util/function/DoublePredicate;->test(D)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1, p2, p3}, Ljava8/util/function/DoublePredicate;->test(D)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static negate(Ljava8/util/function/DoublePredicate;)Ljava8/util/function/DoublePredicate;
    .locals 0

    .line 69
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {p0}, Ljava8/util/function/DoublePredicates$$Lambda$2;->lambdaFactory$(Ljava8/util/function/DoublePredicate;)Ljava8/util/function/DoublePredicate;

    move-result-object p0

    return-object p0
.end method

.method public static or(Ljava8/util/function/DoublePredicate;Ljava8/util/function/DoublePredicate;)Ljava8/util/function/DoublePredicate;
    .locals 0

    .line 92
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {p0, p1}, Ljava8/util/function/DoublePredicates$$Lambda$3;->lambdaFactory$(Ljava8/util/function/DoublePredicate;Ljava8/util/function/DoublePredicate;)Ljava8/util/function/DoublePredicate;

    move-result-object p0

    return-object p0
.end method
