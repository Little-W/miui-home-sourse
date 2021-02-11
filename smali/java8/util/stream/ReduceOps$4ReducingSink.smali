.class Ljava8/util/stream/ReduceOps$4ReducingSink;
.super Ljava8/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Ljava8/util/stream/ReduceOps$AccumulatingSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReduceOps;->makeRef(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BiConsumer;)Ljava8/util/stream/TerminalOp;
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
        "TT;TR;",
        "Ljava8/util/stream/ReduceOps$4ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Ljava8/util/function/BiConsumer;

.field final synthetic val$reducer:Ljava8/util/function/BiConsumer;

.field final synthetic val$seedFactory:Ljava8/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BiConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 283
    iput-object p1, p0, Ljava8/util/stream/ReduceOps$4ReducingSink;->val$seedFactory:Ljava8/util/function/Supplier;

    iput-object p2, p0, Ljava8/util/stream/ReduceOps$4ReducingSink;->val$accumulator:Ljava8/util/function/BiConsumer;

    iput-object p3, p0, Ljava8/util/stream/ReduceOps$4ReducingSink;->val$reducer:Ljava8/util/function/BiConsumer;

    invoke-direct {p0}, Ljava8/util/stream/ReduceOps$Box;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 316
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(I)V
    .locals 0

    .line 306
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 0

    .line 311
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Ljava8/util/stream/ReduceOps$4ReducingSink;->val$accumulator:Ljava8/util/function/BiConsumer;

    iget-object v1, p0, Ljava8/util/stream/ReduceOps$4ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava8/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public begin(J)V
    .locals 0

    .line 287
    iget-object p1, p0, Ljava8/util/stream/ReduceOps$4ReducingSink;->val$seedFactory:Ljava8/util/function/Supplier;

    invoke-interface {p1}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/stream/ReduceOps$4ReducingSink;->state:Ljava/lang/Object;

    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public combine(Ljava8/util/stream/ReduceOps$4ReducingSink;)V
    .locals 2

    .line 321
    iget-object v0, p0, Ljava8/util/stream/ReduceOps$4ReducingSink;->val$reducer:Ljava8/util/function/BiConsumer;

    iget-object v1, p0, Ljava8/util/stream/ReduceOps$4ReducingSink;->state:Ljava/lang/Object;

    iget-object p1, p1, Ljava8/util/stream/ReduceOps$4ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava8/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic combine(Ljava8/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 283
    check-cast p1, Ljava8/util/stream/ReduceOps$4ReducingSink;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$4ReducingSink;->combine(Ljava8/util/stream/ReduceOps$4ReducingSink;)V

    return-void
.end method

.method public end()V
    .locals 0

    return-void
.end method
