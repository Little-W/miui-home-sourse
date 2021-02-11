.class public interface abstract Ljava8/util/stream/LongStream;
.super Ljava/lang/Object;
.source "LongStream.java"

# interfaces
.implements Ljava8/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/LongStream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/stream/BaseStream<",
        "Ljava/lang/Long;",
        "Ljava8/util/stream/LongStream;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract allMatch(Ljava8/util/function/LongPredicate;)Z
.end method

.method public abstract anyMatch(Ljava8/util/function/LongPredicate;)Z
.end method

.method public abstract asDoubleStream()Ljava8/util/stream/DoubleStream;
.end method

.method public abstract average()Ljava8/util/OptionalDouble;
.end method

.method public abstract boxed()Ljava8/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Stream<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract collect(Ljava8/util/function/Supplier;Ljava8/util/function/ObjLongConsumer;Ljava8/util/function/BiConsumer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "TR;>;",
            "Ljava8/util/function/ObjLongConsumer<",
            "TR;>;",
            "Ljava8/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract count()J
.end method

.method public abstract distinct()Ljava8/util/stream/LongStream;
.end method

.method public abstract dropWhile(Ljava8/util/function/LongPredicate;)Ljava8/util/stream/LongStream;
.end method

.method public abstract filter(Ljava8/util/function/LongPredicate;)Ljava8/util/stream/LongStream;
.end method

.method public abstract findAny()Ljava8/util/OptionalLong;
.end method

.method public abstract findFirst()Ljava8/util/OptionalLong;
.end method

.method public abstract flatMap(Ljava8/util/function/LongFunction;)Ljava8/util/stream/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/LongFunction<",
            "+",
            "Ljava8/util/stream/LongStream;",
            ">;)",
            "Ljava8/util/stream/LongStream;"
        }
    .end annotation
.end method

.method public abstract forEach(Ljava8/util/function/LongConsumer;)V
.end method

.method public abstract forEachOrdered(Ljava8/util/function/LongConsumer;)V
.end method

.method public abstract iterator()Ljava8/util/PrimitiveIterator$OfLong;
.end method

.method public abstract limit(J)Ljava8/util/stream/LongStream;
.end method

.method public abstract map(Ljava8/util/function/LongUnaryOperator;)Ljava8/util/stream/LongStream;
.end method

.method public abstract mapToDouble(Ljava8/util/function/LongToDoubleFunction;)Ljava8/util/stream/DoubleStream;
.end method

.method public abstract mapToInt(Ljava8/util/function/LongToIntFunction;)Ljava8/util/stream/IntStream;
.end method

.method public abstract mapToObj(Ljava8/util/function/LongFunction;)Ljava8/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/LongFunction<",
            "+TU;>;)",
            "Ljava8/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract max()Ljava8/util/OptionalLong;
.end method

.method public abstract min()Ljava8/util/OptionalLong;
.end method

.method public abstract noneMatch(Ljava8/util/function/LongPredicate;)Z
.end method

.method public abstract parallel()Ljava8/util/stream/LongStream;
.end method

.method public abstract peek(Ljava8/util/function/LongConsumer;)Ljava8/util/stream/LongStream;
.end method

.method public abstract reduce(JLjava8/util/function/LongBinaryOperator;)J
.end method

.method public abstract reduce(Ljava8/util/function/LongBinaryOperator;)Ljava8/util/OptionalLong;
.end method

.method public abstract sequential()Ljava8/util/stream/LongStream;
.end method

.method public abstract skip(J)Ljava8/util/stream/LongStream;
.end method

.method public abstract sorted()Ljava8/util/stream/LongStream;
.end method

.method public abstract spliterator()Ljava8/util/Spliterator$OfLong;
.end method

.method public abstract sum()J
.end method

.method public abstract summaryStatistics()Ljava8/util/LongSummaryStatistics;
.end method

.method public abstract takeWhile(Ljava8/util/function/LongPredicate;)Ljava8/util/stream/LongStream;
.end method

.method public abstract toArray()[J
.end method
