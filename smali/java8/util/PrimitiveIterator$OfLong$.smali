.class public Ljava8/util/PrimitiveIterator$OfLong$;
.super Ljava/lang/Object;
.source "PrimitiveIterator.java"

# interfaces
.implements Ljava8/util/PrimitiveIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/PrimitiveIterator<",
        "Ljava/lang/Long;",
        "Ljava8/util/function/LongConsumer;",
        ">;"
    }
.end annotation


# direct methods
.method public static bridge synthetic forEachRemaining(Ljava8/util/PrimitiveIterator$OfLong;Ljava/lang/Object;)V
    .locals 0

    .line 142
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-interface {p0, p1}, Ljava8/util/PrimitiveIterator$OfLong;->forEachRemaining(Ljava8/util/function/LongConsumer;)V

    return-void
.end method

.method public static bridge synthetic next(Ljava8/util/PrimitiveIterator$OfLong;)Ljava/lang/Object;
    .locals 0

    .line 142
    invoke-interface {p0}, Ljava8/util/PrimitiveIterator$OfLong;->next()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
