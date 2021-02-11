.class abstract Ljava8/util/stream/ReduceOps$CountingSink;
.super Ljava8/util/stream/ReduceOps$Box;
.source "ReduceOps.java"

# interfaces
.implements Ljava8/util/stream/ReduceOps$AccumulatingSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/ReduceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CountingSink"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/ReduceOps$CountingSink$OfDouble;,
        Ljava8/util/stream/ReduceOps$CountingSink$OfLong;,
        Ljava8/util/stream/ReduceOps$CountingSink$OfInt;,
        Ljava8/util/stream/ReduceOps$CountingSink$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/ReduceOps$Box<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava8/util/stream/ReduceOps$AccumulatingSink<",
        "TT;",
        "Ljava/lang/Long;",
        "Ljava8/util/stream/ReduceOps$CountingSink<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field count:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1112
    invoke-direct {p0}, Ljava8/util/stream/ReduceOps$Box;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 1153
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(I)V
    .locals 0

    .line 1143
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 0

    .line 1148
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public begin(J)V
    .locals 0

    const-wide/16 p1, 0x0

    .line 1119
    iput-wide p1, p0, Ljava8/util/stream/ReduceOps$CountingSink;->count:J

    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic combine(Ljava8/util/stream/ReduceOps$AccumulatingSink;)V
    .locals 0

    .line 1112
    check-cast p1, Ljava8/util/stream/ReduceOps$CountingSink;

    invoke-virtual {p0, p1}, Ljava8/util/stream/ReduceOps$CountingSink;->combine(Ljava8/util/stream/ReduceOps$CountingSink;)V

    return-void
.end method

.method public combine(Ljava8/util/stream/ReduceOps$CountingSink;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/stream/ReduceOps$CountingSink<",
            "TT;>;)V"
        }
    .end annotation

    .line 1129
    iget-wide v0, p0, Ljava8/util/stream/ReduceOps$CountingSink;->count:J

    iget-wide v2, p1, Ljava8/util/stream/ReduceOps$CountingSink;->count:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava8/util/stream/ReduceOps$CountingSink;->count:J

    return-void
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public get()Ljava/lang/Long;
    .locals 2

    .line 1124
    iget-wide v0, p0, Ljava8/util/stream/ReduceOps$CountingSink;->count:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1112
    invoke-virtual {p0}, Ljava8/util/stream/ReduceOps$CountingSink;->get()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
