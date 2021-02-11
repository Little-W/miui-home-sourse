.class public Ljava8/util/PrimitiveIterator$OfInt$;
.super Ljava/lang/Object;
.source "PrimitiveIterator.java"

# interfaces
.implements Ljava8/util/PrimitiveIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/PrimitiveIterator<",
        "Ljava/lang/Integer;",
        "Ljava8/util/function/IntConsumer;",
        ">;"
    }
.end annotation


# direct methods
.method public static bridge synthetic forEachRemaining(Ljava8/util/PrimitiveIterator$OfInt;Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-interface {p0, p1}, Ljava8/util/PrimitiveIterator$OfInt;->forEachRemaining(Ljava8/util/function/IntConsumer;)V

    return-void
.end method

.method public static bridge synthetic next(Ljava8/util/PrimitiveIterator$OfInt;)Ljava/lang/Object;
    .locals 0

    .line 91
    invoke-interface {p0}, Ljava8/util/PrimitiveIterator$OfInt;->next()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
