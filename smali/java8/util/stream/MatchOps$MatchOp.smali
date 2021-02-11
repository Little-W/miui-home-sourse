.class final Ljava8/util/stream/MatchOps$MatchOp;
.super Ljava/lang/Object;
.source "MatchOps.java"

# interfaces
.implements Ljava8/util/stream/TerminalOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/MatchOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MatchOp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava8/util/stream/TerminalOp<",
        "TT;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final inputShape:Ljava8/util/stream/StreamShape;

.field final matchKind:Ljava8/util/stream/MatchOps$MatchKind;

.field final sinkSupplier:Ljava8/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/stream/MatchOps$BooleanTerminalSink<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava8/util/stream/StreamShape;Ljava8/util/stream/MatchOps$MatchKind;Ljava8/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/StreamShape;",
            "Ljava8/util/stream/MatchOps$MatchKind;",
            "Ljava8/util/function/Supplier<",
            "Ljava8/util/stream/MatchOps$BooleanTerminalSink<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Ljava8/util/stream/MatchOps$MatchOp;->inputShape:Ljava8/util/stream/StreamShape;

    .line 228
    iput-object p2, p0, Ljava8/util/stream/MatchOps$MatchOp;->matchKind:Ljava8/util/stream/MatchOps$MatchKind;

    .line 229
    iput-object p3, p0, Ljava8/util/stream/MatchOps$MatchOp;->sinkSupplier:Ljava8/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public evaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava8/util/Spliterator<",
            "TS;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava8/util/stream/MatchOps$MatchTask;

    invoke-direct {v0, p0, p1, p2}, Ljava8/util/stream/MatchOps$MatchTask;-><init>(Ljava8/util/stream/MatchOps$MatchOp;Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)V

    invoke-virtual {v0}, Ljava8/util/stream/MatchOps$MatchTask;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic evaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    .line 211
    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/MatchOps$MatchOp;->evaluateParallel(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public evaluateSequential(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/PipelineHelper<",
            "TT;>;",
            "Ljava8/util/Spliterator<",
            "TS;>;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Ljava8/util/stream/MatchOps$MatchOp;->sinkSupplier:Ljava8/util/function/Supplier;

    invoke-interface {v0}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/stream/Sink;

    invoke-virtual {p1, v0, p2}, Ljava8/util/stream/PipelineHelper;->wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;

    move-result-object p1

    check-cast p1, Ljava8/util/stream/MatchOps$BooleanTerminalSink;

    invoke-virtual {p1}, Ljava8/util/stream/MatchOps$BooleanTerminalSink;->getAndClearState()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic evaluateSequential(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Object;
    .locals 0

    .line 211
    invoke-virtual {p0, p1, p2}, Ljava8/util/stream/MatchOps$MatchOp;->evaluateSequential(Ljava8/util/stream/PipelineHelper;Ljava8/util/Spliterator;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getOpFlags()I
    .locals 2

    .line 234
    sget v0, Ljava8/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    sget v1, Ljava8/util/stream/StreamOpFlag;->NOT_ORDERED:I

    or-int/2addr v0, v1

    return v0
.end method

.method public inputShape()Ljava8/util/stream/StreamShape;
    .locals 1

    .line 239
    iget-object v0, p0, Ljava8/util/stream/MatchOps$MatchOp;->inputShape:Ljava8/util/stream/StreamShape;

    return-object v0
.end method
