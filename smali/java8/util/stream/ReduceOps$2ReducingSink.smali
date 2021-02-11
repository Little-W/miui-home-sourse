.class Ljava8/util/stream/ReduceOps$2ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava8/util/stream/ReduceOps$AccumulatingSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReduceOps;->makeRef(Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/stream/ReduceOps$AccumulatingSink<",
        "TT;",
        "Ljava8/util/Optional<",
        "TT;>;",
        "Ljava8/util/stream/ReduceOps$2ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field private empty:Z

.field private state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final synthetic val$operator:Ljava8/util/function/BinaryOperator;


# direct methods
.method constructor <init>(Ljava8/util/function/BinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Ljava8/util/stream/ReduceOps$2ReducingSink;->val$operator:Ljava8/util/function/BinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 172
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(I)V
    .locals 0

    .line 162
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 0

    .line 167
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

    .line 143
    iget-boolean v0, p0, Ljava8/util/stream/ReduceOps$2ReducingSink;->empty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Ljava8/util/stream/ReduceOps$2ReducingSink;->empty:Z

    .line 145
    iput-object p1, p0, Ljava8/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Ljava8/util/stream/ReduceOps$2ReducingSink;->val$operator:Ljava8/util/function/BinaryOperator;

    iget-object v1, p0, Ljava8/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava8/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Ljava8/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public begin(J)V
    .locals 0

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Ljava8/util/stream/ReduceOps$2ReducingSink;->empty:Z

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Ljava8/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public combine(Ljava8/util/stream/ReduceOps$2ReducingSink;)V
    .locals 1

    .line 182
    iget-boolean v0, p1, Ljava8/util/stream/ReduceOps$2ReducingSink;->empty:Z

    if-nez v0, :cond_0

    .line 183
    iget-object p1, p1, Ljava8/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$2ReducingSink;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic combine(Ljava8/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 131
    check-cast p1, Ljava8/util/stream/ReduceOps$2ReducingSink;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$2ReducingSink;->combine(Ljava8/util/stream/ReduceOps$2ReducingSink;)V

    return-void
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 131
    invoke-virtual {p0}, Ljava8/util/stream/ReduceOps$2ReducingSink;->get()Ljava8/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava8/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Optional<",
            "TT;>;"
        }
    .end annotation

    .line 177
    iget-boolean v0, p0, Ljava8/util/stream/ReduceOps$2ReducingSink;->empty:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava8/util/Optional;->empty()Ljava8/util/Optional;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava8/util/stream/ReduceOps$2ReducingSink;->state:Ljava/lang/Object;

    invoke-static {v0}, Ljava8/util/Optional;->of(Ljava/lang/Object;)Ljava8/util/Optional;

    move-result-object v0

    :goto_0
    return-object v0
.end method
