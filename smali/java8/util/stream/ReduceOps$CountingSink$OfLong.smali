.class final Ljava8/util/stream/ReduceOps$CountingSink$OfLong;
.super Ljava8/util/stream/ReduceOps$CountingSink;
.source "ReduceOps.java"

# interfaces
.implements Ljava8/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/ReduceOps$CountingSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/ReduceOps$CountingSink<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava8/util/stream/Sink$OfLong;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1175
    invoke-direct {p0}, Ljava8/util/stream/ReduceOps$CountingSink;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 2

    .line 1178
    iget-wide p1, p0, Ljava8/util/stream/ReduceOps$CountingSink$OfLong;->count:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Ljava8/util/stream/ReduceOps$CountingSink$OfLong;->count:J

    return-void
.end method

.method public accept(Ljava/lang/Long;)V
    .locals 0

    .line 1183
    invoke-static {p0, p1}, Ljava8/util/stream/SinkDefaults$OfLong;->accept(Ljava8/util/stream/Sink$OfLong;Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1175
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$CountingSink$OfLong;->accept(Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic combine(Ljava8/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 1175
    check-cast p1, Ljava8/util/stream/ReduceOps$CountingSink;

    invoke-super {p0, p1}, Ljava8/util/stream/ReduceOps$CountingSink;->combine(Ljava8/util/stream/ReduceOps$CountingSink;)V

    return-void
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1175
    invoke-super {p0}, Ljava8/util/stream/ReduceOps$CountingSink;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
