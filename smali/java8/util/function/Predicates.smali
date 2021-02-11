.class public final Ljava8/util/function/Predicates;
.super Ljava/lang/Object;
.source "Predicates.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static and(Ljava8/util/function/Predicate;Ljava8/util/function/Predicate;)Ljava8/util/function/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Predicate<",
            "-TT;>;",
            "Ljava8/util/function/Predicate<",
            "-TT;>;)",
            "Ljava8/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 55
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {p0, p1}, Ljava8/util/function/Predicates$$Lambda$1;->lambdaFactory$(Ljava8/util/function/Predicate;Ljava8/util/function/Predicate;)Ljava8/util/function/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static isEqual(Ljava/lang/Object;)Ljava8/util/function/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")",
            "Ljava8/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 110
    invoke-static {}, Ljava8/util/function/Predicates$$Lambda$4;->lambdaFactory$()Ljava8/util/function/Predicate;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava8/util/function/Predicates$$Lambda$5;->lambdaFactory$(Ljava/lang/Object;)Ljava8/util/function/Predicate;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static synthetic lambda$and$146(Ljava8/util/function/Predicate;Ljava8/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 0

    .line 57
    invoke-interface {p0, p2}, Ljava8/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p1, p2}, Ljava8/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$isEqual$149(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$negate$147(Ljava8/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 0

    .line 71
    invoke-interface {p0, p1}, Ljava8/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$or$148(Ljava8/util/function/Predicate;Ljava8/util/function/Predicate;Ljava/lang/Object;)Z
    .locals 0

    .line 96
    invoke-interface {p0, p2}, Ljava8/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1, p2}, Ljava8/util/function/Predicate;->test(Ljava/lang/Object;)Z

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

.method public static negate(Ljava8/util/function/Predicate;)Ljava8/util/function/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Predicate<",
            "-TT;>;)",
            "Ljava8/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 70
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {p0}, Ljava8/util/function/Predicates$$Lambda$2;->lambdaFactory$(Ljava8/util/function/Predicate;)Ljava8/util/function/Predicate;

    move-result-object p0

    return-object p0
.end method

.method public static or(Ljava8/util/function/Predicate;Ljava8/util/function/Predicate;)Ljava8/util/function/Predicate;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Predicate<",
            "-TT;>;",
            "Ljava8/util/function/Predicate<",
            "-TT;>;)",
            "Ljava8/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    .line 94
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {p0, p1}, Ljava8/util/function/Predicates$$Lambda$3;->lambdaFactory$(Ljava8/util/function/Predicate;Ljava8/util/function/Predicate;)Ljava8/util/function/Predicate;

    move-result-object p0

    return-object p0
.end method
