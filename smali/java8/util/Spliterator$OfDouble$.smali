.class public Ljava8/util/Spliterator$OfDouble$;
.super Ljava/lang/Object;
.source "Spliterator.java"

# interfaces
.implements Ljava8/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator$OfPrimitive<",
        "Ljava/lang/Double;",
        "Ljava8/util/function/DoubleConsumer;",
        "Ljava8/util/Spliterator$OfDouble;",
        ">;"
    }
.end annotation


# direct methods
.method public static bridge synthetic forEachRemaining(Ljava8/util/Spliterator$OfDouble;Ljava/lang/Object;)V
    .locals 0

    .line 732
    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfDouble;->forEachRemaining(Ljava8/util/function/DoubleConsumer;)V

    return-void
.end method

.method public static bridge synthetic tryAdvance(Ljava8/util/Spliterator$OfDouble;Ljava/lang/Object;)Z
    .locals 0

    .line 732
    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfDouble;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic trySplit(Ljava8/util/Spliterator$OfDouble;)Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    .line 732
    invoke-interface {p0}, Ljava8/util/Spliterator$OfDouble;->trySplit()Ljava8/util/Spliterator$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic trySplit(Ljava8/util/Spliterator$OfDouble;)Ljava8/util/Spliterator;
    .locals 0

    .line 732
    invoke-interface {p0}, Ljava8/util/Spliterator$OfDouble;->trySplit()Ljava8/util/Spliterator$OfDouble;

    move-result-object p0

    return-object p0
.end method
