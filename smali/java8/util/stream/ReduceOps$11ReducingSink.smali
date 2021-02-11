.class Ljava8/util/stream/ReduceOps$11ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava8/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava8/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReduceOps;->makeDouble(DLjava8/util/function/DoubleBinaryOperator;)Ljava8/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/stream/ReduceOps$AccumulatingSink<",
        "Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "Ljava8/util/stream/ReduceOps$11ReducingSink;",
        ">;",
        "Ljava8/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field private state:D

.field final synthetic val$identity:D

.field final synthetic val$operator:Ljava8/util/function/DoubleBinaryOperator;


# direct methods
.method constructor <init>(DLjava8/util/function/DoubleBinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 874
    iput-wide p1, p0, Ljava8/util/stream/ReduceOps$11ReducingSink;->val$identity:D

    iput-object p3, p0, Ljava8/util/stream/ReduceOps$11ReducingSink;->val$operator:Ljava8/util/function/DoubleBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3

    .line 885
    iget-object v0, p0, Ljava8/util/stream/ReduceOps$11ReducingSink;->val$operator:Ljava8/util/function/DoubleBinaryOperator;

    iget-wide v1, p0, Ljava8/util/stream/ReduceOps$11ReducingSink;->state:D

    invoke-interface {v0, v1, v2, p1, p2}, Ljava8/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide p1

    iput-wide p1, p0, Ljava8/util/stream/ReduceOps$11ReducingSink;->state:D

    return-void
.end method

.method public accept(I)V
    .locals 0

    .line 904
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 0

    .line 909
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(Ljava/lang/Double;)V
    .locals 0

    .line 890
    invoke-static {p0, p1}, Ljava8/util/stream/SinkDefaults$OfDouble;->accept(Ljava8/util/stream/Sink$OfDouble;Ljava/lang/Double;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 874
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$11ReducingSink;->accept(Ljava/lang/Double;)V

    return-void
.end method

.method public begin(J)V
    .locals 0

    .line 880
    iget-wide p1, p0, Ljava8/util/stream/ReduceOps$11ReducingSink;->val$identity:D

    iput-wide p1, p0, Ljava8/util/stream/ReduceOps$11ReducingSink;->state:D

    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public combine(Ljava8/util/stream/ReduceOps$11ReducingSink;)V
    .locals 2

    .line 919
    iget-wide v0, p1, Ljava8/util/stream/ReduceOps$11ReducingSink;->state:D

    invoke-virtual {p0, v0, v1}, Ljava8/util/stream/ReduceOps$11ReducingSink;->accept(D)V

    return-void
.end method

.method public bridge synthetic combine(Ljava8/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 874
    check-cast p1, Ljava8/util/stream/ReduceOps$11ReducingSink;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$11ReducingSink;->combine(Ljava8/util/stream/ReduceOps$11ReducingSink;)V

    return-void
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public get()Ljava/lang/Double;
    .locals 2

    .line 914
    iget-wide v0, p0, Ljava8/util/stream/ReduceOps$11ReducingSink;->state:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 874
    invoke-virtual {p0}, Ljava8/util/stream/ReduceOps$11ReducingSink;->get()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
