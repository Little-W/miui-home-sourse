.class public Ljava8/util/stream/LongStream$;
.super Ljava/lang/Object;
.source "LongStream.java"

# interfaces
.implements Ljava8/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/stream/BaseStream<",
        "Ljava/lang/Long;",
        "Ljava8/util/stream/LongStream;",
        ">;"
    }
.end annotation


# direct methods
.method public static bridge synthetic iterator(Ljava8/util/stream/LongStream;)Ljava/util/Iterator;
    .locals 0

    .line 70
    invoke-interface {p0}, Ljava8/util/stream/LongStream;->iterator()Ljava8/util/PrimitiveIterator$OfLong;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic parallel(Ljava8/util/stream/LongStream;)Ljava8/util/stream/BaseStream;
    .locals 0

    .line 70
    invoke-interface {p0}, Ljava8/util/stream/LongStream;->parallel()Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sequential(Ljava8/util/stream/LongStream;)Ljava8/util/stream/BaseStream;
    .locals 0

    .line 70
    invoke-interface {p0}, Ljava8/util/stream/LongStream;->sequential()Ljava8/util/stream/LongStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic spliterator(Ljava8/util/stream/LongStream;)Ljava8/util/Spliterator;
    .locals 0

    .line 70
    invoke-interface {p0}, Ljava8/util/stream/LongStream;->spliterator()Ljava8/util/Spliterator$OfLong;

    move-result-object p0

    return-object p0
.end method
