.class final Ljava8/util/stream/MatchOps;
.super Ljava/lang/Object;
.source "MatchOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/MatchOps$MatchTask;,
        Ljava8/util/stream/MatchOps$BooleanTerminalSink;,
        Ljava8/util/stream/MatchOps$MatchOp;,
        Ljava8/util/stream/MatchOps$MatchKind;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$makeDouble$165(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/DoublePredicate;)Ljava8/util/stream/MatchOps$BooleanTerminalSink;
    .locals 1

    .line 201
    new-instance v0, Ljava8/util/stream/MatchOps$4MatchSink;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/MatchOps$4MatchSink;-><init>(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/DoublePredicate;)V

    return-object v0
.end method

.method static synthetic lambda$makeInt$163(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/IntPredicate;)Ljava8/util/stream/MatchOps$BooleanTerminalSink;
    .locals 1

    .line 131
    new-instance v0, Ljava8/util/stream/MatchOps$2MatchSink;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/MatchOps$2MatchSink;-><init>(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/IntPredicate;)V

    return-object v0
.end method

.method static synthetic lambda$makeLong$164(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/LongPredicate;)Ljava8/util/stream/MatchOps$BooleanTerminalSink;
    .locals 1

    .line 166
    new-instance v0, Ljava8/util/stream/MatchOps$3MatchSink;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/MatchOps$3MatchSink;-><init>(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/LongPredicate;)V

    return-object v0
.end method

.method static synthetic lambda$makeRef$162(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/Predicate;)Ljava8/util/stream/MatchOps$BooleanTerminalSink;
    .locals 1

    .line 97
    new-instance v0, Ljava8/util/stream/MatchOps$1MatchSink;

    invoke-direct {v0, p0, p1}, Ljava8/util/stream/MatchOps$1MatchSink;-><init>(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/Predicate;)V

    return-object v0
.end method

.method public static makeDouble(Ljava8/util/function/DoublePredicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/DoublePredicate;",
            "Ljava8/util/stream/MatchOps$MatchKind;",
            ")",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Double;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 179
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v0, Ljava8/util/stream/MatchOps$MatchOp;

    sget-object v1, Ljava8/util/stream/StreamShape;->DOUBLE_VALUE:Ljava8/util/stream/StreamShape;

    invoke-static {p1, p0}, Ljava8/util/stream/MatchOps$$Lambda$4;->lambdaFactory$(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/DoublePredicate;)Ljava8/util/function/Supplier;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Ljava8/util/stream/MatchOps$MatchOp;-><init>(Ljava8/util/stream/StreamShape;Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeInt(Ljava8/util/function/IntPredicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/IntPredicate;",
            "Ljava8/util/stream/MatchOps$MatchKind;",
            ")",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 110
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Ljava8/util/stream/MatchOps$MatchOp;

    sget-object v1, Ljava8/util/stream/StreamShape;->INT_VALUE:Ljava8/util/stream/StreamShape;

    invoke-static {p1, p0}, Ljava8/util/stream/MatchOps$$Lambda$2;->lambdaFactory$(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/IntPredicate;)Ljava8/util/function/Supplier;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Ljava8/util/stream/MatchOps$MatchOp;-><init>(Ljava8/util/stream/StreamShape;Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeLong(Ljava8/util/function/LongPredicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/LongPredicate;",
            "Ljava8/util/stream/MatchOps$MatchKind;",
            ")",
            "Ljava8/util/stream/TerminalOp<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 144
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    new-instance v0, Ljava8/util/stream/MatchOps$MatchOp;

    sget-object v1, Ljava8/util/stream/StreamShape;->LONG_VALUE:Ljava8/util/stream/StreamShape;

    invoke-static {p1, p0}, Ljava8/util/stream/MatchOps$$Lambda$3;->lambdaFactory$(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/LongPredicate;)Ljava8/util/function/Supplier;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Ljava8/util/stream/MatchOps$MatchOp;-><init>(Ljava8/util/stream/StreamShape;Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/Supplier;)V

    return-object v0
.end method

.method public static makeRef(Ljava8/util/function/Predicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Predicate<",
            "-TT;>;",
            "Ljava8/util/stream/MatchOps$MatchKind;",
            ")",
            "Ljava8/util/stream/TerminalOp<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 81
    invoke-static {p0}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance v0, Ljava8/util/stream/MatchOps$MatchOp;

    sget-object v1, Ljava8/util/stream/StreamShape;->REFERENCE:Ljava8/util/stream/StreamShape;

    invoke-static {p1, p0}, Ljava8/util/stream/MatchOps$$Lambda$1;->lambdaFactory$(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/Predicate;)Ljava8/util/function/Supplier;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0}, Ljava8/util/stream/MatchOps$MatchOp;-><init>(Ljava8/util/stream/StreamShape;Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/Supplier;)V

    return-object v0
.end method
