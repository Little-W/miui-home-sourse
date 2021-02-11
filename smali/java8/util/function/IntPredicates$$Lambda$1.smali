.class final synthetic Ljava8/util/function/IntPredicates$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/IntPredicate;


# instance fields
.field private final arg$1:Ljava8/util/function/IntPredicate;

.field private final arg$2:Ljava8/util/function/IntPredicate;


# direct methods
.method private constructor <init>(Ljava8/util/function/IntPredicate;Ljava8/util/function/IntPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/function/IntPredicates$$Lambda$1;->arg$1:Ljava8/util/function/IntPredicate;

    iput-object p2, p0, Ljava8/util/function/IntPredicates$$Lambda$1;->arg$2:Ljava8/util/function/IntPredicate;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/IntPredicate;Ljava8/util/function/IntPredicate;)Ljava8/util/function/IntPredicate;
    .locals 1

    new-instance v0, Ljava8/util/function/IntPredicates$$Lambda$1;

    invoke-direct {v0, p0, p1}, Ljava8/util/function/IntPredicates$$Lambda$1;-><init>(Ljava8/util/function/IntPredicate;Ljava8/util/function/IntPredicate;)V

    return-object v0
.end method


# virtual methods
.method public test(I)Z
    .locals 2

    iget-object v0, p0, Ljava8/util/function/IntPredicates$$Lambda$1;->arg$1:Ljava8/util/function/IntPredicate;

    iget-object v1, p0, Ljava8/util/function/IntPredicates$$Lambda$1;->arg$2:Ljava8/util/function/IntPredicate;

    invoke-static {v0, v1, p1}, Ljava8/util/function/IntPredicates;->lambda$and$26(Ljava8/util/function/IntPredicate;Ljava8/util/function/IntPredicate;I)Z

    move-result p1

    return p1
.end method
