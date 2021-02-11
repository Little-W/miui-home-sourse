.class Ljava8/util/stream/MatchOps$4MatchSink;
.super Ljava8/util/stream/MatchOps$BooleanTerminalSink;
.source "MatchOps.java"

# interfaces
.implements Ljava8/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/MatchOps;->makeDouble(Ljava8/util/function/DoublePredicate;Ljava8/util/stream/MatchOps$MatchKind;)Ljava8/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MatchSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/MatchOps$BooleanTerminalSink<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava8/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field final synthetic val$matchKind:Ljava8/util/stream/MatchOps$MatchKind;

.field final synthetic val$predicate:Ljava8/util/function/DoublePredicate;


# direct methods
.method constructor <init>(Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/DoublePredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 183
    iput-object p1, p0, Ljava8/util/stream/MatchOps$4MatchSink;->val$matchKind:Ljava8/util/stream/MatchOps$MatchKind;

    iput-object p2, p0, Ljava8/util/stream/MatchOps$4MatchSink;->val$predicate:Ljava8/util/function/DoublePredicate;

    .line 184
    invoke-direct {p0, p1}, Ljava8/util/stream/MatchOps$BooleanTerminalSink;-><init>(Ljava8/util/stream/MatchOps$MatchKind;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1

    .line 189
    iget-boolean v0, p0, Ljava8/util/stream/MatchOps$4MatchSink;->stop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava8/util/stream/MatchOps$4MatchSink;->val$predicate:Ljava8/util/function/DoublePredicate;

    invoke-interface {v0, p1, p2}, Ljava8/util/function/DoublePredicate;->test(D)Z

    move-result p1

    iget-object p2, p0, Ljava8/util/stream/MatchOps$4MatchSink;->val$matchKind:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {p2}, Ljava8/util/stream/MatchOps$MatchKind;->access$000(Ljava8/util/stream/MatchOps$MatchKind;)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    .line 190
    iput-boolean p1, p0, Ljava8/util/stream/MatchOps$4MatchSink;->stop:Z

    .line 191
    iget-object p1, p0, Ljava8/util/stream/MatchOps$4MatchSink;->val$matchKind:Ljava8/util/stream/MatchOps$MatchKind;

    invoke-static {p1}, Ljava8/util/stream/MatchOps$MatchKind;->access$100(Ljava8/util/stream/MatchOps$MatchKind;)Z

    move-result p1

    iput-boolean p1, p0, Ljava8/util/stream/MatchOps$4MatchSink;->value:Z

    :cond_0
    return-void
.end method

.method public accept(Ljava/lang/Double;)V
    .locals 0

    .line 197
    invoke-static {p0, p1}, Ljava8/util/stream/SinkDefaults$OfDouble;->accept(Ljava8/util/stream/Sink$OfDouble;Ljava/lang/Double;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 181
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Ljava8/util/stream/MatchOps$4MatchSink;->accept(Ljava/lang/Double;)V

    return-void
.end method
