.class Ljava8/util/stream/ReduceOps$13ReducingSink;
.super Ljava8/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Ljava8/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava8/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReduceOps;->makeDouble(Ljava8/util/function/Supplier;Ljava8/util/function/ObjDoubleConsumer;Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/ReduceOps$Box<",
        "TR;>;",
        "Ljava8/util/stream/ReduceOps$AccumulatingSink<",
        "Ljava/lang/Double;",
        "TR;",
        "Ljava8/util/stream/ReduceOps$13ReducingSink;",
        ">;",
        "Ljava8/util/stream/Sink$OfDouble;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Ljava8/util/function/ObjDoubleConsumer;

.field final synthetic val$combiner:Ljava8/util/function/BinaryOperator;

.field final synthetic val$supplier:Ljava8/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava8/util/function/Supplier;Ljava8/util/function/ObjDoubleConsumer;Ljava8/util/function/BinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1022
    iput-object p1, p0, Ljava8/util/stream/ReduceOps$13ReducingSink;->val$supplier:Ljava8/util/function/Supplier;

    iput-object p2, p0, Ljava8/util/stream/ReduceOps$13ReducingSink;->val$accumulator:Ljava8/util/function/ObjDoubleConsumer;

    iput-object p3, p0, Ljava8/util/stream/ReduceOps$13ReducingSink;->val$combiner:Ljava8/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava8/util/stream/ReduceOps$Box;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 2

    .line 1031
    iget-object v0, p0, Ljava8/util/stream/ReduceOps$13ReducingSink;->val$accumulator:Ljava8/util/function/ObjDoubleConsumer;

    iget-object v1, p0, Ljava8/util/stream/ReduceOps$13ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Ljava8/util/function/ObjDoubleConsumer;->accept(Ljava/lang/Object;D)V

    return-void
.end method

.method public accept(I)V
    .locals 0

    .line 1055
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 0

    .line 1060
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(Ljava/lang/Double;)V
    .locals 0

    .line 1036
    invoke-static {p0, p1}, Ljava8/util/stream/SinkDefaults$OfDouble;->accept(Ljava8/util/stream/Sink$OfDouble;Ljava/lang/Double;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1022
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$13ReducingSink;->accept(Ljava/lang/Double;)V

    return-void
.end method

.method public begin(J)V
    .locals 0

    .line 1026
    iget-object p1, p0, Ljava8/util/stream/ReduceOps$13ReducingSink;->val$supplier:Ljava8/util/function/Supplier;

    invoke-interface {p1}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/stream/ReduceOps$13ReducingSink;->state:Ljava/lang/Object;

    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public combine(Ljava8/util/stream/ReduceOps$13ReducingSink;)V
    .locals 2

    .line 1041
    iget-object v0, p0, Ljava8/util/stream/ReduceOps$13ReducingSink;->val$combiner:Ljava8/util/function/BinaryOperator;

    iget-object v1, p0, Ljava8/util/stream/ReduceOps$13ReducingSink;->state:Ljava/lang/Object;

    iget-object p1, p1, Ljava8/util/stream/ReduceOps$13ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava8/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/stream/ReduceOps$13ReducingSink;->state:Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic combine(Ljava8/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 1022
    check-cast p1, Ljava8/util/stream/ReduceOps$13ReducingSink;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$13ReducingSink;->combine(Ljava8/util/stream/ReduceOps$13ReducingSink;)V

    return-void
.end method

.method public end()V
    .locals 0

    return-void
.end method
