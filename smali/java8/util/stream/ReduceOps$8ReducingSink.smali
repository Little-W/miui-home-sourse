.class Ljava8/util/stream/ReduceOps$8ReducingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava8/util/stream/ReduceOps$AccumulatingSink;
.implements Ljava8/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReduceOps;->makeLong(JLjava8/util/function/LongBinaryOperator;)Ljava8/util/stream/TerminalOp;
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
        "Ljava/lang/Long;",
        "Ljava8/util/stream/ReduceOps$8ReducingSink;",
        ">;",
        "Ljava8/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field private state:J

.field final synthetic val$identity:J

.field final synthetic val$operator:Ljava8/util/function/LongBinaryOperator;


# direct methods
.method constructor <init>(JLjava8/util/function/LongBinaryOperator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 628
    iput-wide p1, p0, Ljava8/util/stream/ReduceOps$8ReducingSink;->val$identity:J

    iput-object p3, p0, Ljava8/util/stream/ReduceOps$8ReducingSink;->val$operator:Ljava8/util/function/LongBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 663
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(I)V
    .locals 0

    .line 658
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 3

    .line 639
    iget-object v0, p0, Ljava8/util/stream/ReduceOps$8ReducingSink;->val$operator:Ljava8/util/function/LongBinaryOperator;

    iget-wide v1, p0, Ljava8/util/stream/ReduceOps$8ReducingSink;->state:J

    invoke-interface {v0, v1, v2, p1, p2}, Ljava8/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Ljava8/util/stream/ReduceOps$8ReducingSink;->state:J

    return-void
.end method

.method public accept(Ljava/lang/Long;)V
    .locals 0

    .line 644
    invoke-static {p0, p1}, Ljava8/util/stream/SinkDefaults$OfLong;->accept(Ljava8/util/stream/Sink$OfLong;Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 628
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$8ReducingSink;->accept(Ljava/lang/Long;)V

    return-void
.end method

.method public begin(J)V
    .locals 0

    .line 634
    iget-wide p1, p0, Ljava8/util/stream/ReduceOps$8ReducingSink;->val$identity:J

    iput-wide p1, p0, Ljava8/util/stream/ReduceOps$8ReducingSink;->state:J

    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public combine(Ljava8/util/stream/ReduceOps$8ReducingSink;)V
    .locals 2

    .line 673
    iget-wide v0, p1, Ljava8/util/stream/ReduceOps$8ReducingSink;->state:J

    invoke-virtual {p0, v0, v1}, Ljava8/util/stream/ReduceOps$8ReducingSink;->accept(J)V

    return-void
.end method

.method public bridge synthetic combine(Ljava8/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 628
    check-cast p1, Ljava8/util/stream/ReduceOps$8ReducingSink;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$8ReducingSink;->combine(Ljava8/util/stream/ReduceOps$8ReducingSink;)V

    return-void
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public get()Ljava/lang/Long;
    .locals 2

    .line 668
    iget-wide v0, p0, Ljava8/util/stream/ReduceOps$8ReducingSink;->state:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 628
    invoke-virtual {p0}, Ljava8/util/stream/ReduceOps$8ReducingSink;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
