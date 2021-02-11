.class Ljava8/util/stream/WhileOps$3Op$1OpSink;
.super Ljava8/util/stream/Sink$ChainedLong;
.source "WhileOps.java"

# interfaces
.implements Ljava8/util/stream/WhileOps$DropWhileSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/WhileOps$3Op;->opWrapSink(Ljava8/util/stream/Sink;Z)Ljava8/util/stream/WhileOps$DropWhileSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Sink$ChainedLong<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava8/util/stream/WhileOps$DropWhileSink<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field dropCount:J

.field take:Z

.field final synthetic this$0:Ljava8/util/stream/WhileOps$3Op;

.field final synthetic val$retainAndCountDroppedElements:Z

.field final synthetic val$sink:Ljava8/util/stream/Sink;


# direct methods
.method constructor <init>(Ljava8/util/stream/WhileOps$3Op;Ljava8/util/stream/Sink;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 526
    iput-object p1, p0, Ljava8/util/stream/WhileOps$3Op$1OpSink;->this$0:Ljava8/util/stream/WhileOps$3Op;

    iput-object p2, p0, Ljava8/util/stream/WhileOps$3Op$1OpSink;->val$sink:Ljava8/util/stream/Sink;

    iput-boolean p3, p0, Ljava8/util/stream/WhileOps$3Op$1OpSink;->val$retainAndCountDroppedElements:Z

    .line 527
    invoke-direct {p0, p2}, Ljava8/util/stream/Sink$ChainedLong;-><init>(Ljava8/util/stream/Sink;)V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 6

    .line 532
    iget-boolean v0, p0, Ljava8/util/stream/WhileOps$3Op$1OpSink;->take:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Ljava8/util/stream/WhileOps$3Op$1OpSink;->this$0:Ljava8/util/stream/WhileOps$3Op;

    iget-object v0, v0, Ljava8/util/stream/WhileOps$3Op;->val$predicate:Ljava8/util/function/LongPredicate;

    invoke-interface {v0, p1, p2}, Ljava8/util/function/LongPredicate;->test(J)Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Ljava8/util/stream/WhileOps$3Op$1OpSink;->take:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 536
    :cond_1
    :goto_0
    iget-boolean v0, p0, Ljava8/util/stream/WhileOps$3Op$1OpSink;->val$retainAndCountDroppedElements:Z

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 537
    iget-wide v2, p0, Ljava8/util/stream/WhileOps$3Op$1OpSink;->dropCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Ljava8/util/stream/WhileOps$3Op$1OpSink;->dropCount:J

    .line 541
    :cond_2
    iget-boolean v0, p0, Ljava8/util/stream/WhileOps$3Op$1OpSink;->val$retainAndCountDroppedElements:Z

    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    .line 542
    :cond_3
    iget-object v0, p0, Ljava8/util/stream/WhileOps$3Op$1OpSink;->downstream:Ljava8/util/stream/Sink;

    invoke-interface {v0, p1, p2}, Ljava8/util/stream/Sink;->accept(J)V

    :cond_4
    return-void
.end method

.method public getDropCount()J
    .locals 2

    .line 547
    iget-wide v0, p0, Ljava8/util/stream/WhileOps$3Op$1OpSink;->dropCount:J

    return-wide v0
.end method
