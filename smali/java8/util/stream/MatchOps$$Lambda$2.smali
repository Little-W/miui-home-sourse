.class final synthetic Ljava8/util/stream/MatchOps$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava8/util/function/Supplier;


# instance fields
.field private final arg$1:Ljava8/util/stream/MatchOps$MatchKind;

.field private final arg$2:Ljava8/util/function/IntPredicate;


# direct methods
.method private constructor <init>(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/IntPredicate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava8/util/stream/MatchOps$$Lambda$2;->arg$1:Ljava8/util/stream/MatchOps$MatchKind;

    iput-object p2, p0, Ljava8/util/stream/MatchOps$$Lambda$2;->arg$2:Ljava8/util/function/IntPredicate;

    return-void
.end method

.method public static lambdaFactory$(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/IntPredicate;)Ljava8/util/function/Supplier;
    .locals 1

    new-instance v0, Ljava8/util/stream/MatchOps$$Lambda$2;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/MatchOps$$Lambda$2;-><init>(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/IntPredicate;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljava8/util/stream/MatchOps$$Lambda$2;->arg$1:Ljava8/util/stream/MatchOps$MatchKind;

    iget-object v1, p0, Ljava8/util/stream/MatchOps$$Lambda$2;->arg$2:Ljava8/util/function/IntPredicate;

    invoke-static {v0, v1}, Ljava8/util/stream/MatchOps;->lambda$makeInt$163(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/IntPredicate;)Ljava8/util/stream/MatchOps$BooleanTerminalSink;

    move-result-object v0

    return-object v0
.end method
