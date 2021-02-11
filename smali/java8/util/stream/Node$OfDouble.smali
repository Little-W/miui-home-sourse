.class public interface abstract Ljava8/util/stream/Node$OfDouble;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava8/util/stream/Node$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Node;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/stream/Node$OfPrimitive<",
        "Ljava/lang/Double;",
        "Ljava8/util/function/DoubleConsumer;",
        "[D",
        "Ljava8/util/Spliterator$OfDouble;",
        "Ljava8/util/stream/Node$OfDouble;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract copyInto([Ljava/lang/Double;I)V
.end method

.method public abstract forEach(Ljava8/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getShape()Ljava8/util/stream/StreamShape;
.end method

.method public abstract newArray(I)[D
.end method

.method public abstract truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfDouble;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava8/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava8/util/stream/Node$OfDouble;"
        }
    .end annotation
.end method
