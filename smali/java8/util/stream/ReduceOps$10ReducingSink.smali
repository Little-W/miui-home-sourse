.class Ljava8/util/stream/ReduceOps$10ReducingSink;
.super Ljava8/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Ljava8/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava8/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReduceOps;->makeLong(Ljava8/util/function/Supplier;Ljava8/util/function/ObjLongConsumer;Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/TerminalOp;
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
        "Ljava/lang/Long;",
        "TR;",
        "Ljava8/util/stream/ReduceOps$10ReducingSink;",
        ">;",
        "Ljava8/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Ljava8/util/function/ObjLongConsumer;

.field final synthetic val$combiner:Ljava8/util/function/BinaryOperator;

.field final synthetic val$supplier:Ljava8/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava8/util/function/Supplier;Ljava8/util/function/ObjLongConsumer;Ljava8/util/function/BinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 776
    iput-object p1, p0, Ljava8/util/stream/ReduceOps$10ReducingSink;->val$supplier:Ljava8/util/function/Supplier;

    iput-object p2, p0, Ljava8/util/stream/ReduceOps$10ReducingSink;->val$accumulator:Ljava8/util/function/ObjLongConsumer;

    iput-object p3, p0, Ljava8/util/stream/ReduceOps$10ReducingSink;->val$combiner:Ljava8/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava8/util/stream/ReduceOps$Box;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 809
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(I)V
    .locals 0

    .line 804
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 2

    .line 785
    iget-object v0, p0, Ljava8/util/stream/ReduceOps$10ReducingSink;->val$accumulator:Ljava8/util/function/ObjLongConsumer;

    iget-object v1, p0, Ljava8/util/stream/ReduceOps$10ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Ljava8/util/function/ObjLongConsumer;->accept(Ljava/lang/Object;J)V

    return-void
.end method

.method public accept(Ljava/lang/Long;)V
    .locals 0

    .line 790
    invoke-static {p0, p1}, Ljava8/util/stream/SinkDefaults$OfLong;->accept(Ljava8/util/stream/Sink$OfLong;Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 776
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$10ReducingSink;->accept(Ljava/lang/Long;)V

    return-void
.end method

.method public begin(J)V
    .locals 0

    .line 780
    iget-object p1, p0, Ljava8/util/stream/ReduceOps$10ReducingSink;->val$supplier:Ljava8/util/function/Supplier;

    invoke-interface {p1}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/stream/ReduceOps$10ReducingSink;->state:Ljava/lang/Object;

    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public combine(Ljava8/util/stream/ReduceOps$10ReducingSink;)V
    .locals 2

    .line 814
    iget-object v0, p0, Ljava8/util/stream/ReduceOps$10ReducingSink;->val$combiner:Ljava8/util/function/BinaryOperator;

    iget-object v1, p0, Ljava8/util/stream/ReduceOps$10ReducingSink;->state:Ljava/lang/Object;

    iget-object p1, p1, Ljava8/util/stream/ReduceOps$10ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava8/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/stream/ReduceOps$10ReducingSink;->state:Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic combine(Ljava8/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 776
    check-cast p1, Ljava8/util/stream/ReduceOps$10ReducingSink;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$10ReducingSink;->combine(Ljava8/util/stream/ReduceOps$10ReducingSink;)V

    return-void
.end method

.method public end()V
    .locals 0

    return-void
.end method
