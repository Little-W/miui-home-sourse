.class Ljava8/util/stream/ReduceOps$12ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava8/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava8/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReduceOps;->makeDouble(Ljava8/util/function/DoubleBinaryOperator;)Ljava8/util/stream/TerminalOp;
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
        "Ljava8/util/OptionalDouble;",
        "Ljava8/util/stream/ReduceOps$12ReducingSink;",
        ">;",
        "Ljava8/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field private empty:Z

.field private state:D

.field final synthetic val$operator:Ljava8/util/function/DoubleBinaryOperator;


# direct methods
.method constructor <init>(Ljava8/util/function/DoubleBinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 940
    iput-object p1, p0, Ljava8/util/stream/ReduceOps$12ReducingSink;->val$operator:Ljava8/util/function/DoubleBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3

    .line 952
    iget-boolean v0, p0, Ljava8/util/stream/ReduceOps$12ReducingSink;->empty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 953
    iput-boolean v0, p0, Ljava8/util/stream/ReduceOps$12ReducingSink;->empty:Z

    .line 954
    iput-wide p1, p0, Ljava8/util/stream/ReduceOps$12ReducingSink;->state:D

    goto :goto_0

    .line 957
    :cond_0
    iget-object v0, p0, Ljava8/util/stream/ReduceOps$12ReducingSink;->val$operator:Ljava8/util/function/DoubleBinaryOperator;

    iget-wide v1, p0, Ljava8/util/stream/ReduceOps$12ReducingSink;->state:D

    invoke-interface {v0, v1, v2, p1, p2}, Ljava8/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide p1

    iput-wide p1, p0, Ljava8/util/stream/ReduceOps$12ReducingSink;->state:D

    :goto_0
    return-void
.end method

.method public accept(I)V
    .locals 0

    .line 977
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 0

    .line 982
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(Ljava/lang/Double;)V
    .locals 0

    .line 963
    invoke-static {p0, p1}, Ljava8/util/stream/SinkDefaults$OfDouble;->accept(Ljava8/util/stream/Sink$OfDouble;Ljava/lang/Double;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 940
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$12ReducingSink;->accept(Ljava/lang/Double;)V

    return-void
.end method

.method public begin(J)V
    .locals 0

    const/4 p1, 0x1

    .line 946
    iput-boolean p1, p0, Ljava8/util/stream/ReduceOps$12ReducingSink;->empty:Z

    const-wide/16 p1, 0x0

    .line 947
    iput-wide p1, p0, Ljava8/util/stream/ReduceOps$12ReducingSink;->state:D

    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public combine(Ljava8/util/stream/ReduceOps$12ReducingSink;)V
    .locals 2

    .line 992
    iget-boolean v0, p1, Ljava8/util/stream/ReduceOps$12ReducingSink;->empty:Z

    if-nez v0, :cond_0

    .line 993
    iget-wide v0, p1, Ljava8/util/stream/ReduceOps$12ReducingSink;->state:D

    invoke-virtual {p0, v0, v1}, Ljava8/util/stream/ReduceOps$12ReducingSink;->accept(D)V

    :cond_0
    return-void
.end method

.method public bridge synthetic combine(Ljava8/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 940
    check-cast p1, Ljava8/util/stream/ReduceOps$12ReducingSink;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$12ReducingSink;->combine(Ljava8/util/stream/ReduceOps$12ReducingSink;)V

    return-void
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 940
    invoke-virtual {p0}, Ljava8/util/stream/ReduceOps$12ReducingSink;->get()Ljava8/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava8/util/OptionalDouble;
    .locals 2

    .line 987
    iget-boolean v0, p0, Ljava8/util/stream/ReduceOps$12ReducingSink;->empty:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava8/util/OptionalDouble;->empty()Ljava8/util/OptionalDouble;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Ljava8/util/stream/ReduceOps$12ReducingSink;->state:D

    invoke-static {v0, v1}, Ljava8/util/OptionalDouble;->of(D)Ljava8/util/OptionalDouble;

    move-result-object v0

    :goto_0
    return-object v0
.end method
