.class public final Ljava8/util/function/BiFunctions;
.super Ljava/lang/Object;
.source "BiFunctions.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static andThen(Ljava8/util/function/BiFunction;Ljava8/util/function/Function;)Ljava8/util/function/BiFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/BiFunction<",
            "-TT;-TU;+TR;>;",
            "Ljava8/util/function/Function<",
            "-TR;+TV;>;)",
            "Ljava8/util/function/BiFunction<",
            "TT;TU;TV;>;"
        }
    .end annotation

    .line 54
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {p1, p0}, Ljava8/util/function/BiFunctions$$Lambda$1;->lambdaFactory$(Ljava8/util/function/Function;Ljava8/util/function/BiFunction;)Ljava8/util/function/BiFunction;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$andThen$145(Ljava8/util/function/Function;Ljava8/util/function/BiFunction;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    invoke-interface {p1, p2, p3}, Ljava8/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava8/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
