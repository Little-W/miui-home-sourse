.class Ljava8/util/stream/SliceOps$1$1;
.super Ljava8/util/stream/Sink$ChainedReference;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/SliceOps$1;->opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Sink$ChainedReference<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field m:J

.field n:J

.field final synthetic this$0:Ljava8/util/stream/SliceOps$1;


# direct methods
.method constructor <init>(Ljava8/util/stream/SliceOps$1;Ljava8/util/stream/Sink;)V
    .locals 2

    .line 185
    iput-object p1, p0, Ljava8/util/stream/SliceOps$1$1;->this$0:Ljava8/util/stream/SliceOps$1;

    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedReference;-><init>(Ljava8/util/stream/Sink;)V

    .line 186
    iget-object p1, p0, Ljava8/util/stream/SliceOps$1$1;->this$0:Ljava8/util/stream/SliceOps$1;

    iget-wide p1, p1, Ljava8/util/stream/SliceOps$1;->val$skip:J

    iput-wide p1, p0, Ljava8/util/stream/SliceOps$1$1;->n:J

    .line 187
    iget-object p1, p0, Ljava8/util/stream/SliceOps$1$1;->this$0:Ljava8/util/stream/SliceOps$1;

    iget-wide p1, p1, Ljava8/util/stream/SliceOps$1;->val$limit:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p1, p0, Ljava8/util/stream/SliceOps$1$1;->this$0:Ljava8/util/stream/SliceOps$1;

    iget-wide p1, p1, Ljava8/util/stream/SliceOps$1;->val$limit:J

    goto :goto_0

    :cond_0
    const-wide p1, 0x7fffffffffffffffL

    :goto_0
    iput-wide p1, p0, Ljava8/util/stream/SliceOps$1$1;->m:J

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 196
    iget-wide v0, p0, Ljava8/util/stream/SliceOps$1$1;->n:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x1

    if-nez v4, :cond_0

    .line 197
    iget-wide v0, p0, Ljava8/util/stream/SliceOps$1$1;->m:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    sub-long/2addr v0, v5

    .line 198
    iput-wide v0, p0, Ljava8/util/stream/SliceOps$1$1;->m:J

    .line 199
    iget-object v0, p0, Ljava8/util/stream/SliceOps$1$1;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {v0, p1}, Ljava8/util/stream/Sink;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v5

    .line 203
    iput-wide v0, p0, Ljava8/util/stream/SliceOps$1$1;->n:J

    :cond_1
    :goto_0
    return-void
.end method

.method public begin(J)V
    .locals 8

    .line 191
    iget-object v0, p0, Ljava8/util/stream/SliceOps$1$1;->downstream:Ljava8/util/stream/Sink;

    iget-object v1, p0, Ljava8/util/stream/SliceOps$1$1;->this$0:Ljava8/util/stream/SliceOps$1;

    iget-wide v4, v1, Ljava8/util/stream/SliceOps$1;->val$skip:J

    iget-wide v6, p0, Ljava8/util/stream/SliceOps$1$1;->m:J

    move-wide v2, p1

    invoke-static/range {v2 .. v7}, Ljava8/util/stream/SliceOps;->access$200(JJJ)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Ljava8/util/stream/Sink;->begin(J)V

    return-void
.end method

.method public cancellationRequested()Z
    .locals 4

    .line 209
    iget-wide v0, p0, Ljava8/util/stream/SliceOps$1$1;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljava8/util/stream/SliceOps$1$1;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {v0}, Ljava8/util/stream/Sink;->cancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
