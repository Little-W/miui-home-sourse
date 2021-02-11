.class public final Ljava8/util/function/Consumers;
.super Ljava/lang/Object;
.source "Consumers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static andThen(Ljava8/util/function/Consumer;Ljava8/util/function/Consumer;)Ljava8/util/function/Consumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)",
            "Ljava8/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 51
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {p0, p1}, Ljava8/util/function/Consumers$$Lambda$1;->lambdaFactory$(Ljava8/util/function/Consumer;Ljava8/util/function/Consumer;)Ljava8/util/function/Consumer;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$andThen$143(Ljava8/util/function/Consumer;Ljava8/util/function/Consumer;Ljava/lang/Object;)V
    .locals 0

    .line 53
    invoke-interface {p0, p2}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-interface {p1, p2}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
