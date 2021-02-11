.class Ljava8/util/stream/MatchOps$2MatchSink;
.super Ljava8/util/stream/MatchOps$BooleanTerminalSink;
.source "MatchOps.java"

# interfaces
.implements Ljava8/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/MatchOps;->makeInt(Ljava8/util/function/IntPredicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MatchSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/MatchOps$BooleanTerminalSink<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava8/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field final synthetic val$matchKind:Ljava8/util/stream/MatchOps$MatchKind;

.field final synthetic val$predicate:Ljava8/util/function/IntPredicate;


# direct methods
.method constructor <init>(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/IntPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Ljava8/util/stream/MatchOps$2MatchSink;->val$matchKind:Ljava8/util/stream/MatchOps$MatchKind;

    iput-object p2, p0, Ljava8/util/stream/MatchOps$2MatchSink;->val$predicate:Ljava8/util/function/IntPredicate;

    .line 114
    invoke-direct {p0, p1}, Ljava8/util/stream/MatchOps$BooleanTerminalSink;-><init>(Ljava8/util/stream/MatchOps$MatchKind;)V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 1

    .line 119
    iget-boolean v0, p0, Ljava8/util/stream/MatchOps$2MatchSink;->stop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/MatchOps$2MatchSink;->val$predicate:Ljava8/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava8/util/function/IntPredicate;->test(I)Z

    move-result p1

    iget-object v0, p0, Ljava8/util/stream/MatchOps$2MatchSink;->val$matchKind:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {v0}, Ljava8/util/stream/MatchOps$MatchKind;->access$000(Ljava8/util/stream/MatchOps$MatchKind;)Z

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 120
    iput-boolean p1, p0, Ljava8/util/stream/MatchOps$2MatchSink;->stop:Z

    .line 121
    iget-object p1, p0, Ljava8/util/stream/MatchOps$2MatchSink;->val$matchKind:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {p1}, Ljava8/util/stream/MatchOps$MatchKind;->access$100(Ljava8/util/stream/MatchOps$MatchKind;)Z

    move-result p1

    iput-boolean p1, p0, Ljava8/util/stream/MatchOps$2MatchSink;->value:Z

    :cond_0
    return-void
.end method

.method public accept(Ljava/lang/Integer;)V
    .locals 0

    .line 127
    invoke-static {p0, p1}, Ljava8/util/stream/SinkDefaults$OfInt;->accept(Ljava8/util/stream/Sink$OfInt;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 112
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/MatchOps$2MatchSink;->accept(Ljava/lang/Integer;)V

    return-void
.end method
