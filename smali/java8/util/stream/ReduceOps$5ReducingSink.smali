.class Ljava8/util/stream/ReduceOps$5ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava8/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava8/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReduceOps;->makeInt(ILjava8/util/function/IntBinaryOperator;)Ljava8/util/stream/TerminalOp;
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
        "Ljava/lang/Integer;",
        "Ljava8/util/stream/ReduceOps$5ReducingSink;",
        ">;",
        "Ljava8/util/stream/Sink$OfInt;"
    }
.end annotation


# instance fields
.field private state:I

.field final synthetic val$identity:I

.field final synthetic val$operator:Ljava8/util/function/IntBinaryOperator;


# direct methods
.method constructor <init>(ILjava8/util/function/IntBinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 382
    iput p1, p0, Ljava8/util/stream/ReduceOps$5ReducingSink;->val$identity:I

    iput-object p2, p0, Ljava8/util/stream/ReduceOps$5ReducingSink;->val$operator:Ljava8/util/function/IntBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 417
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(I)V
    .locals 2

    .line 393
    iget-object v0, p0, Ljava8/util/stream/ReduceOps$5ReducingSink;->val$operator:Ljava8/util/function/IntBinaryOperator;

    iget v1, p0, Ljava8/util/stream/ReduceOps$5ReducingSink;->state:I

    invoke-interface {v0, v1, p1}, Ljava8/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result p1

    iput p1, p0, Ljava8/util/stream/ReduceOps$5ReducingSink;->state:I

    return-void
.end method

.method public accept(J)V
    .locals 0

    .line 412
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(Ljava/lang/Integer;)V
    .locals 0

    .line 398
    invoke-static {p0, p1}, Ljava8/util/stream/SinkDefaults$OfInt;->accept(Ljava8/util/stream/Sink$OfInt;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 382
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$5ReducingSink;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public begin(J)V
    .locals 0

    .line 388
    iget p1, p0, Ljava8/util/stream/ReduceOps$5ReducingSink;->val$identity:I

    iput p1, p0, Ljava8/util/stream/ReduceOps$5ReducingSink;->state:I

    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public combine(Ljava8/util/stream/ReduceOps$5ReducingSink;)V
    .locals 0

    .line 427
    iget p1, p1, Ljava8/util/stream/ReduceOps$5ReducingSink;->state:I

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$5ReducingSink;->accept(I)V

    return-void
.end method

.method public bridge synthetic combine(Ljava8/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 382
    check-cast p1, Ljava8/util/stream/ReduceOps$5ReducingSink;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$5ReducingSink;->combine(Ljava8/util/stream/ReduceOps$5ReducingSink;)V

    return-void
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public get()Ljava/lang/Integer;
    .locals 1

    .line 422
    iget v0, p0, Ljava8/util/stream/ReduceOps$5ReducingSink;->state:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 382
    invoke-virtual {p0}, Ljava8/util/stream/ReduceOps$5ReducingSink;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
