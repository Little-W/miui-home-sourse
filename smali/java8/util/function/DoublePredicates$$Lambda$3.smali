.class final synthetic Ljava8/util/function/DoublePredicates$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/DoublePredicate;


# instance fields
.field private final arg$1:Ljava8/util/function/DoublePredicate;

.field private final arg$2:Ljava8/util/function/DoublePredicate;


# direct methods
.method private constructor <init>(Ljava8/util/function/DoublePredicate;Ljava8/util/function/DoublePredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/function/DoublePredicates$$Lambda$3;->arg$1:Ljava8/util/function/DoublePredicate;

    iput-object p2, p0, Ljava8/util/function/DoublePredicates$$Lambda$3;->arg$2:Ljava8/util/function/DoublePredicate;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/DoublePredicate;Ljava8/util/function/DoublePredicate;)Ljava8/util/function/DoublePredicate;
    .locals 1

    new-instance v0, Ljava8/util/function/DoublePredicates$$Lambda$3;

    invoke-direct {v0, p0, p1}, Ljava8/util/function/DoublePredicates$$Lambda$3;-><init>(Ljava8/util/function/DoublePredicate;Ljava8/util/function/DoublePredicate;)V

    return-object v0
.end method


# virtual methods
.method public test(D)Z
    .locals 2

    iget-object v0, p0, Ljava8/util/function/DoublePredicates$$Lambda$3;->arg$1:Ljava8/util/function/DoublePredicate;

    iget-object v1, p0, Ljava8/util/function/DoublePredicates$$Lambda$3;->arg$2:Ljava8/util/function/DoublePredicate;

    invoke-static {v0, v1, p1, p2}, Ljava8/util/function/DoublePredicates;->lambda$or$133(Ljava8/util/function/DoublePredicate;Ljava8/util/function/DoublePredicate;D)Z

    move-result p1

    return p1
.end method
