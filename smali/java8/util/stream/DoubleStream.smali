.class public interface abstract Ljava8/util/stream/DoubleStream;
.super Ljava/lang/Object;
.source "DoubleStream.java"

# interfaces
.implements Ljava8/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/DoubleStream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/stream/BaseStream<",
        "Ljava/lang/Double;",
        "Ljava8/util/stream/DoubleStream;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract allMatch(Ljava8/util/function/DoublePredicate;)Z
.end method

.method public abstract anyMatch(Ljava8/util/function/DoublePredicate;)Z
.end method

.method public abstract average()Ljava8/util/OptionalDouble;
.end method

.method public abstract boxed()Ljava8/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Stream<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method public abstract collect(Ljava8/util/function/Supplier;Ljava8/util/function/ObjDoubleConsumer;Ljava8/util/function/BiConsumer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "TR;>;",
            "Ljava8/util/function/ObjDoubleConsumer<",
            "TR;>;",
            "Ljava8/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract count()J
.end method

.method public abstract distinct()Ljava8/util/stream/DoubleStream;
.end method

.method public abstract dropWhile(Ljava8/util/function/DoublePredicate;)Ljava8/util/stream/DoubleStream;
.end method

.method public abstract filter(Ljava8/util/function/DoublePredicate;)Ljava8/util/stream/DoubleStream;
.end method

.method public abstract findAny()Ljava8/util/OptionalDouble;
.end method

.method public abstract findFirst()Ljava8/util/OptionalDouble;
.end method

.method public abstract flatMap(Ljava8/util/function/DoubleFunction;)Ljava8/util/stream/DoubleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/DoubleFunction<",
            "+",
            "Ljava8/util/stream/DoubleStream;",
            ">;)",
            "Ljava8/util/stream/DoubleStream;"
        }
    .end annotation
.end method

.method public abstract forEach(Ljava8/util/function/DoubleConsumer;)V
.end method

.method public abstract forEachOrdered(Ljava8/util/function/DoubleConsumer;)V
.end method

.method public abstract iterator()Ljava8/util/PrimitiveIterator$OfDouble;
.end method

.method public abstract limit(J)Ljava8/util/stream/DoubleStream;
.end method

.method public abstract map(Ljava8/util/function/DoubleUnaryOperator;)Ljava8/util/stream/DoubleStream;
.end method

.method public abstract mapToInt(Ljava8/util/function/DoubleToIntFunction;)Ljava8/util/stream/IntStream;
.end method

.method public abstract mapToLong(Ljava8/util/function/DoubleToLongFunction;)Ljava8/util/stream/LongStream;
.end method

.method public abstract mapToObj(Ljava8/util/function/DoubleFunction;)Ljava8/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/DoubleFunction<",
            "+TU;>;)",
            "Ljava8/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract max()Ljava8/util/OptionalDouble;
.end method

.method public abstract min()Ljava8/util/OptionalDouble;
.end method

.method public abstract noneMatch(Ljava8/util/function/DoublePredicate;)Z
.end method

.method public abstract parallel()Ljava8/util/stream/DoubleStream;
.end method

.method public abstract peek(Ljava8/util/function/DoubleConsumer;)Ljava8/util/stream/DoubleStream;
.end method

.method public abstract reduce(DLjava8/util/function/DoubleBinaryOperator;)D
.end method

.method public abstract reduce(Ljava8/util/function/DoubleBinaryOperator;)Ljava8/util/OptionalDouble;
.end method

.method public abstract sequential()Ljava8/util/stream/DoubleStream;
.end method

.method public abstract skip(J)Ljava8/util/stream/DoubleStream;
.end method

.method public abstract sorted()Ljava8/util/stream/DoubleStream;
.end method

.method public abstract spliterator()Ljava8/util/Spliterator$OfDouble;
.end method

.method public abstract sum()D
.end method

.method public abstract summaryStatistics()Ljava8/util/DoubleSummaryStatistics;
.end method

.method public abstract takeWhile(Ljava8/util/function/DoublePredicate;)Ljava8/util/stream/DoubleStream;
.end method

.method public abstract toArray()[D
.end method
