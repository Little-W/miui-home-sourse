.class public Ljava8/util/Spliterator$OfInt$;
.super Ljava/lang/Object;
.source "Spliterator.java"

# interfaces
.implements Ljava8/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator$OfPrimitive<",
        "Ljava/lang/Integer;",
        "Ljava8/util/function/IntConsumer;",
        "Ljava8/util/Spliterator$OfInt;",
        ">;"
    }
.end annotation


# direct methods
.method public static bridge synthetic forEachRemaining(Ljava8/util/Spliterator$OfInt;Ljava/lang/Object;)V
    .locals 0

    .line 648
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfInt;->forEachRemaining(Ljava8/util/function/IntConsumer;)V

    return-void
.end method

.method public static bridge synthetic tryAdvance(Ljava8/util/Spliterator$OfInt;Ljava/lang/Object;)Z
    .locals 0

    .line 648
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfInt;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic trySplit(Ljava8/util/Spliterator$OfInt;)Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    .line 648
    invoke-interface {p0}, Ljava8/util/Spliterator$OfInt;->trySplit()Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic trySplit(Ljava8/util/Spliterator$OfInt;)Ljava8/util/Spliterator;
    .locals 0

    .line 648
    invoke-interface {p0}, Ljava8/util/Spliterator$OfInt;->trySplit()Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method
