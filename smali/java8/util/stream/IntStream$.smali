.class public Ljava8/util/stream/IntStream$;
.super Ljava/lang/Object;
.source "IntStream.java"

# interfaces
.implements Ljava8/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/stream/BaseStream<",
        "Ljava/lang/Integer;",
        "Ljava8/util/stream/IntStream;",
        ">;"
    }
.end annotation


# direct methods
.method public static bridge synthetic iterator(Ljava8/util/stream/IntStream;)Ljava/util/Iterator;
    .locals 0

    .line 70
    invoke-interface {p0}, Ljava8/util/stream/IntStream;->iterator()Ljava8/util/PrimitiveIterator$OfInt;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic parallel(Ljava8/util/stream/IntStream;)Ljava8/util/stream/BaseStream;
    .locals 0

    .line 70
    invoke-interface {p0}, Ljava8/util/stream/IntStream;->parallel()Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sequential(Ljava8/util/stream/IntStream;)Ljava8/util/stream/BaseStream;
    .locals 0

    .line 70
    invoke-interface {p0}, Ljava8/util/stream/IntStream;->sequential()Ljava8/util/stream/IntStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic spliterator(Ljava8/util/stream/IntStream;)Ljava8/util/Spliterator;
    .locals 0

    .line 70
    invoke-interface {p0}, Ljava8/util/stream/IntStream;->spliterator()Ljava8/util/Spliterator$OfInt;

    move-result-object p0

    return-object p0
.end method
