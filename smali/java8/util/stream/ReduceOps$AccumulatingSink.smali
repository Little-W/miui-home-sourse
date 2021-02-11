.class interface abstract Ljava8/util/stream/ReduceOps$AccumulatingSink;
.super Ljava/lang/Object;
.source "ReduceOps.java"

# interfaces
.implements Ljava8/util/stream/TerminalSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/ReduceOps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "AccumulatingSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "K::",
        "Ljava8/util/stream/ReduceOps$AccumulatingSink<",
        "TT;TR;TK;>;>",
        "Ljava/lang/Object;",
        "Ljava8/util/stream/TerminalSink<",
        "TT;TR;>;"
    }
.end annotation


# virtual methods
.method public abstract combine(Ljava8/util/stream/ReduceOps$AccumulatingSink;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation
.end method
