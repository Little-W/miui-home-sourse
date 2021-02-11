.class public final Ljava8/util/function/IntPredicates;
.super Ljava/lang/Object;
.source "IntPredicates.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static and(Ljava8/util/function/IntPredicate;Ljava8/util/function/IntPredicate;)Ljava8/util/function/IntPredicate;
    .locals 0

    .line 54
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {p0, p1}, Ljava8/util/function/IntPredicates$$Lambda$1;->lambdaFactory$(Ljava8/util/function/IntPredicate;Ljava8/util/function/IntPredicate;)Ljava8/util/function/IntPredicate;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$and$26(Ljava8/util/function/IntPredicate;Ljava8/util/function/IntPredicate;I)Z
    .locals 0

    .line 56
    invoke-interface {p0, p2}, Ljava8/util/function/IntPredicate;->test(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Ljava8/util/function/IntPredicate;->test(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$negate$27(Ljava8/util/function/IntPredicate;I)Z
    .locals 0

    .line 70
    invoke-interface {p0, p1}, Ljava8/util/function/IntPredicate;->test(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$or$28(Ljava8/util/function/IntPredicate;Ljava8/util/function/IntPredicate;I)Z
    .locals 0

    .line 94
    invoke-interface {p0, p2}, Ljava8/util/function/IntPredicate;->test(I)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1, p2}, Ljava8/util/function/IntPredicate;->test(I)Z

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

.method public static negate(Ljava8/util/function/IntPredicate;)Ljava8/util/function/IntPredicate;
    .locals 0

    .line 69
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {p0}, Ljava8/util/function/IntPredicates$$Lambda$2;->lambdaFactory$(Ljava8/util/function/IntPredicate;)Ljava8/util/function/IntPredicate;

    move-result-object p0

    return-object p0
.end method

.method public static or(Ljava8/util/function/IntPredicate;Ljava8/util/function/IntPredicate;)Ljava8/util/function/IntPredicate;
    .locals 0

    .line 92
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {p0, p1}, Ljava8/util/function/IntPredicates$$Lambda$3;->lambdaFactory$(Ljava8/util/function/IntPredicate;Ljava8/util/function/IntPredicate;)Ljava8/util/function/IntPredicate;

    move-result-object p0

    return-object p0
.end method
