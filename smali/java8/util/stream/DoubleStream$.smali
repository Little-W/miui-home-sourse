.class public Ljava8/util/stream/DoubleStream$;
.super Ljava/lang/Object;
.source "DoubleStream.java"

# interfaces
.implements Ljava8/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/stream/BaseStream<",
        "Ljava/lang/Double;",
        "Ljava8/util/stream/DoubleStream;",
        ">;"
    }
.end annotation


# direct methods
.method public static bridge synthetic iterator(Ljava8/util/stream/DoubleStream;)Ljava/util/Iterator;
    .locals 0

    .line 69
    invoke-interface {p0}, Ljava8/util/stream/DoubleStream;->iterator()Ljava8/util/PrimitiveIterator$OfDouble;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic parallel(Ljava8/util/stream/DoubleStream;)Ljava8/util/stream/BaseStream;
    .locals 0

    .line 69
    invoke-interface {p0}, Ljava8/util/stream/DoubleStream;->parallel()Ljava8/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic sequential(Ljava8/util/stream/DoubleStream;)Ljava8/util/stream/BaseStream;
    .locals 0

    .line 69
    invoke-interface {p0}, Ljava8/util/stream/DoubleStream;->sequential()Ljava8/util/stream/DoubleStream;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic spliterator(Ljava8/util/stream/DoubleStream;)Ljava8/util/Spliterator;
    .locals 0

    .line 69
    invoke-interface {p0}, Ljava8/util/stream/DoubleStream;->spliterator()Ljava8/util/Spliterator$OfDouble;

    move-result-object p0

    return-object p0
.end method
