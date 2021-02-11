.class public Ljava8/util/PrimitiveIterator$OfDouble$;
.super Ljava/lang/Object;
.source "PrimitiveIterator.java"

# interfaces
.implements Ljava8/util/PrimitiveIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/PrimitiveIterator<",
        "Ljava/lang/Double;",
        "Ljava8/util/function/DoubleConsumer;",
        ">;"
    }
.end annotation


# direct methods
.method public static bridge synthetic forEachRemaining(Ljava8/util/PrimitiveIterator$OfDouble;Ljava/lang/Object;)V
    .locals 0

    .line 193
    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Ljava8/util/PrimitiveIterator$OfDouble;->forEachRemaining(Ljava8/util/function/DoubleConsumer;)V

    return-void
.end method

.method public static bridge synthetic next(Ljava8/util/PrimitiveIterator$OfDouble;)Ljava/lang/Object;
    .locals 0

    .line 193
    invoke-interface {p0}, Ljava8/util/PrimitiveIterator$OfDouble;->next()Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method
