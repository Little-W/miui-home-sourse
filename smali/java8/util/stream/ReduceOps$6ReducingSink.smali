.class Ljava8/util/stream/ReduceOps$6ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava8/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava8/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReduceOps;->makeInt(Ljava8/util/function/IntBinaryOperator;)Ljava8/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/stream/ReduceOps$AccumulatingSink<",
        "Ljava/lang/Integer;",
        "Ljava8/util/OptionalInt;",
        "Ljava8/util/stream/ReduceOps$6ReducingSink;",
        ">;",
        "Ljava8/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field private empty:Z

.field private state:I

.field final synthetic val$operator:Ljava8/util/function/IntBinaryOperator;


# direct methods
.method constructor <init>(Ljava8/util/function/IntBinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 448
    iput-object p1, p0, Ljava8/util/stream/ReduceOps$6ReducingSink;->val$operator:Ljava8/util/function/IntBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 490
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(I)V
    .locals 2

    .line 460
    iget-boolean v0, p0, Ljava8/util/stream/ReduceOps$6ReducingSink;->empty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 461
    iput-boolean v0, p0, Ljava8/util/stream/ReduceOps$6ReducingSink;->empty:Z

    .line 462
    iput p1, p0, Ljava8/util/stream/ReduceOps$6ReducingSink;->state:I

    goto :goto_0

    .line 465
    :cond_0
    iget-object v0, p0, Ljava8/util/stream/ReduceOps$6ReducingSink;->val$operator:Ljava8/util/function/IntBinaryOperator;

    iget v1, p0, Ljava8/util/stream/ReduceOps$6ReducingSink;->state:I

    invoke-interface {v0, v1, p1}, Ljava8/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result p1

    iput p1, p0, Ljava8/util/stream/ReduceOps$6ReducingSink;->state:I

    :goto_0
    return-void
.end method

.method public accept(J)V
    .locals 0

    .line 485
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(Ljava/lang/Integer;)V
    .locals 0

    .line 471
    invoke-static {p0, p1}, Ljava8/util/stream/SinkDefaults$OfInt;->accept(Ljava8/util/stream/Sink$OfInt;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 448
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$6ReducingSink;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public begin(J)V
    .locals 0

    const/4 p1, 0x1

    .line 454
    iput-boolean p1, p0, Ljava8/util/stream/ReduceOps$6ReducingSink;->empty:Z

    const/4 p1, 0x0

    .line 455
    iput p1, p0, Ljava8/util/stream/ReduceOps$6ReducingSink;->state:I

    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public combine(Ljava8/util/stream/ReduceOps$6ReducingSink;)V
    .locals 1

    .line 500
    iget-boolean v0, p1, Ljava8/util/stream/ReduceOps$6ReducingSink;->empty:Z

    if-nez v0, :cond_0

    .line 501
    iget p1, p1, Ljava8/util/stream/ReduceOps$6ReducingSink;->state:I

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$6ReducingSink;->accept(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic combine(Ljava8/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 448
    check-cast p1, Ljava8/util/stream/ReduceOps$6ReducingSink;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$6ReducingSink;->combine(Ljava8/util/stream/ReduceOps$6ReducingSink;)V

    return-void
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 448
    invoke-virtual {p0}, Ljava8/util/stream/ReduceOps$6ReducingSink;->get()Ljava8/util/OptionalInt;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava8/util/OptionalInt;
    .locals 1

    .line 495
    iget-boolean v0, p0, Ljava8/util/stream/ReduceOps$6ReducingSink;->empty:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava8/util/OptionalInt;->empty()Ljava8/util/OptionalInt;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget v0, p0, Ljava8/util/stream/ReduceOps$6ReducingSink;->state:I

    invoke-static {v0}, Ljava8/util/OptionalInt;->of(I)Ljava8/util/OptionalInt;

    move-result-object v0

    :goto_0
    return-object v0
.end method
