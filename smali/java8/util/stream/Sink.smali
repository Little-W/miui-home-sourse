.class interface abstract Ljava8/util/stream/Sink;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava8/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/Sink$ChainedDouble;,
        Ljava8/util/stream/Sink$ChainedLong;,
        Ljava8/util/stream/Sink$ChainedInt;,
        Ljava8/util/stream/Sink$ChainedReference;,
        Ljava8/util/stream/Sink$OfDouble;,
        Ljava8/util/stream/Sink$OfLong;,
        Ljava8/util/stream/Sink$OfInt;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava8/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract accept(D)V
.end method

.method public abstract accept(I)V
.end method

.method public abstract accept(J)V
.end method

.method public abstract begin(J)V
.end method

.method public abstract cancellationRequested()Z
.end method

.method public abstract end()V
.end method
