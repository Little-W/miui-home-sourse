.class public Ljava8/util/Spliterator$OfLong$;
.super Ljava/lang/Object;
.source "Spliterator.java"

# interfaces
.implements Ljava8/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator$OfPrimitive<",
        "Ljava/lang/Long;",
        "Ljava8/util/function/LongConsumer;",
        "Ljava8/util/Spliterator$OfLong;",
        ">;"
    }
.end annotation


# direct methods
.method public static bridge synthetic forEachRemaining(Ljava8/util/Spliterator$OfLong;Ljava/lang/Object;)V
    .locals 0

    .line 690
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfLong;->forEachRemaining(Ljava8/util/function/LongConsumer;)V

    return-void
.end method

.method public static bridge synthetic tryAdvance(Ljava8/util/Spliterator$OfLong;Ljava/lang/Object;)Z
    .locals 0

    .line 690
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfLong;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic trySplit(Ljava8/util/Spliterator$OfLong;)Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    .line 690
    invoke-interface {p0}, Ljava8/util/Spliterator$OfLong;->trySplit()Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic trySplit(Ljava8/util/Spliterator$OfLong;)Ljava8/util/Spliterator;
    .locals 0

    .line 690
    invoke-interface {p0}, Ljava8/util/Spliterator$OfLong;->trySplit()Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method
