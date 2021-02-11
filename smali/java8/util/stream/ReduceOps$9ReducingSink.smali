.class Ljava8/util/stream/ReduceOps$9ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava8/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava8/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReduceOps;->makeLong(Ljava8/util/function/LongBinaryOperator;)Ljava8/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReducingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/stream/ReduceOps$AccumulatingSink<",
        "Ljava/lang/Long;",
        "Ljava8/util/OptionalLong;",
        "Ljava8/util/stream/ReduceOps$9ReducingSink;",
        ">;",
        "Ljava8/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field private empty:Z

.field private state:J

.field final synthetic val$operator:Ljava8/util/function/LongBinaryOperator;


# direct methods
.method constructor <init>(Ljava8/util/function/LongBinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 694
    iput-object p1, p0, Ljava8/util/stream/ReduceOps$9ReducingSink;->val$operator:Ljava8/util/function/LongBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 736
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(I)V
    .locals 0

    .line 731
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 3

    .line 706
    iget-boolean v0, p0, Ljava8/util/stream/ReduceOps$9ReducingSink;->empty:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 707
    iput-boolean v0, p0, Ljava8/util/stream/ReduceOps$9ReducingSink;->empty:Z

    .line 708
    iput-wide p1, p0, Ljava8/util/stream/ReduceOps$9ReducingSink;->state:J

    goto :goto_0

    .line 711
    :cond_0
    iget-object v0, p0, Ljava8/util/stream/ReduceOps$9ReducingSink;->val$operator:Ljava8/util/function/LongBinaryOperator;

    iget-wide v1, p0, Ljava8/util/stream/ReduceOps$9ReducingSink;->state:J

    invoke-interface {v0, v1, v2, p1, p2}, Ljava8/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Ljava8/util/stream/ReduceOps$9ReducingSink;->state:J

    :goto_0
    return-void
.end method

.method public accept(Ljava/lang/Long;)V
    .locals 0

    .line 717
    invoke-static {p0, p1}, Ljava8/util/stream/SinkDefaults$OfLong;->accept(Ljava8/util/stream/Sink$OfLong;Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 694
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$9ReducingSink;->accept(Ljava/lang/Long;)V

    return-void
.end method

.method public begin(J)V
    .locals 0

    const/4 p1, 0x1

    .line 700
    iput-boolean p1, p0, Ljava8/util/stream/ReduceOps$9ReducingSink;->empty:Z

    const-wide/16 p1, 0x0

    .line 701
    iput-wide p1, p0, Ljava8/util/stream/ReduceOps$9ReducingSink;->state:J

    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public combine(Ljava8/util/stream/ReduceOps$9ReducingSink;)V
    .locals 2

    .line 746
    iget-boolean v0, p1, Ljava8/util/stream/ReduceOps$9ReducingSink;->empty:Z

    if-nez v0, :cond_0

    .line 747
    iget-wide v0, p1, Ljava8/util/stream/ReduceOps$9ReducingSink;->state:J

    invoke-virtual {p0, v0, v1}, Ljava8/util/stream/ReduceOps$9ReducingSink;->accept(J)V

    :cond_0
    return-void
.end method

.method public bridge synthetic combine(Ljava8/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 694
    check-cast p1, Ljava8/util/stream/ReduceOps$9ReducingSink;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$9ReducingSink;->combine(Ljava8/util/stream/ReduceOps$9ReducingSink;)V

    return-void
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 694
    invoke-virtual {p0}, Ljava8/util/stream/ReduceOps$9ReducingSink;->get()Ljava8/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava8/util/OptionalLong;
    .locals 2

    .line 741
    iget-boolean v0, p0, Ljava8/util/stream/ReduceOps$9ReducingSink;->empty:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava8/util/OptionalLong;->empty()Ljava8/util/OptionalLong;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Ljava8/util/stream/ReduceOps$9ReducingSink;->state:J

    invoke-static {v0, v1}, Ljava8/util/OptionalLong;->of(J)Ljava8/util/OptionalLong;

    move-result-object v0

    :goto_0
    return-object v0
.end method
