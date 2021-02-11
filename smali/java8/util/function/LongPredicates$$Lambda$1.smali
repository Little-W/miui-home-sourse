.class final synthetic Ljava8/util/function/LongPredicates$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/LongPredicate;


# instance fields
.field private final arg$1:Ljava8/util/function/LongPredicate;

.field private final arg$2:Ljava8/util/function/LongPredicate;


# direct methods
.method private constructor <init>(Ljava8/util/function/LongPredicate;Ljava8/util/function/LongPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/function/LongPredicates$$Lambda$1;->arg$1:Ljava8/util/function/LongPredicate;

    iput-object p2, p0, Ljava8/util/function/LongPredicates$$Lambda$1;->arg$2:Ljava8/util/function/LongPredicate;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/function/LongPredicate;Ljava8/util/function/LongPredicate;)Ljava8/util/function/LongPredicate;
    .locals 1

    new-instance v0, Ljava8/util/function/LongPredicates$$Lambda$1;

    invoke-direct {v0, p0, p1}, Ljava8/util/function/LongPredicates$$Lambda$1;-><init>(Ljava8/util/function/LongPredicate;Ljava8/util/function/LongPredicate;)V

    return-object v0
.end method


# virtual methods
.method public test(J)Z
    .locals 2

    iget-object v0, p0, Ljava8/util/function/LongPredicates$$Lambda$1;->arg$1:Ljava8/util/function/LongPredicate;

    iget-object v1, p0, Ljava8/util/function/LongPredicates$$Lambda$1;->arg$2:Ljava8/util/function/LongPredicate;

    invoke-static {v0, v1, p1, p2}, Ljava8/util/function/LongPredicates;->lambda$and$138(Ljava8/util/function/LongPredicate;Ljava8/util/function/LongPredicate;J)Z

    move-result p1

    return p1
.end method
