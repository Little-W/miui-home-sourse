.class public interface abstract Ljava8/util/stream/Stream;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Ljava8/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/Stream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava8/util/stream/BaseStream<",
        "TT;",
        "Ljava8/util/stream/Stream<",
        "TT;>;>;"
    }
.end annotation


# virtual methods
.method public abstract allMatch(Ljava8/util/function/Predicate;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract anyMatch(Ljava8/util/function/Predicate;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract collect(Ljava8/util/function/Supplier;Ljava8/util/function/BiConsumer;Ljava8/util/function/BiConsumer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Supplier<",
            "TR;>;",
            "Ljava8/util/function/BiConsumer<",
            "TR;-TT;>;",
            "Ljava8/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract collect(Ljava8/util/stream/Collector;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/Collector<",
            "-TT;TA;TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract count()J
.end method

.method public abstract distinct()Ljava8/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract dropWhile(Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Predicate<",
            "-TT;>;)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract filter(Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Predicate<",
            "-TT;>;)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract findAny()Ljava8/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Optional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract findFirst()Ljava8/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Optional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract flatMap(Ljava8/util/function/Function;)Ljava8/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+",
            "Ljava8/util/stream/Stream<",
            "+TR;>;>;)",
            "Ljava8/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation
.end method

.method public abstract flatMapToDouble(Ljava8/util/function/Function;)Ljava8/util/stream/DoubleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Function<",
            "-TT;+",
            "Ljava8/util/stream/DoubleStream;",
            ">;)",
            "Ljava8/util/stream/DoubleStream;"
        }
    .end annotation
.end method

.method public abstract flatMapToInt(Ljava8/util/function/Function;)Ljava8/util/stream/IntStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Function<",
            "-TT;+",
            "Ljava8/util/stream/IntStream;",
            ">;)",
            "Ljava8/util/stream/IntStream;"
        }
    .end annotation
.end method

.method public abstract flatMapToLong(Ljava8/util/function/Function;)Ljava8/util/stream/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Function<",
            "-TT;+",
            "Ljava8/util/stream/LongStream;",
            ">;)",
            "Ljava8/util/stream/LongStream;"
        }
    .end annotation
.end method

.method public abstract forEach(Ljava8/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public abstract forEachOrdered(Ljava8/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public abstract limit(J)Ljava8/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract map(Ljava8/util/function/Function;)Ljava8/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Function<",
            "-TT;+TR;>;)",
            "Ljava8/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation
.end method

.method public abstract mapToDouble(Ljava8/util/function/ToDoubleFunction;)Ljava8/util/stream/DoubleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava8/util/stream/DoubleStream;"
        }
    .end annotation
.end method

.method public abstract mapToInt(Ljava8/util/function/ToIntFunction;)Ljava8/util/stream/IntStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava8/util/stream/IntStream;"
        }
    .end annotation
.end method

.method public abstract mapToLong(Ljava8/util/function/ToLongFunction;)Ljava8/util/stream/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava8/util/stream/LongStream;"
        }
    .end annotation
.end method

.method public abstract max(Ljava/util/Comparator;)Ljava8/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava8/util/Optional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract min(Ljava/util/Comparator;)Ljava8/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava8/util/Optional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract noneMatch(Ljava8/util/function/Predicate;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract peek(Ljava8/util/function/Consumer;)Ljava8/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract reduce(Ljava/lang/Object;Ljava8/util/function/BiFunction;Ljava8/util/function/BinaryOperator;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Ljava8/util/function/BiFunction<",
            "TU;-TT;TU;>;",
            "Ljava8/util/function/BinaryOperator<",
            "TU;>;)TU;"
        }
    .end annotation
.end method

.method public abstract reduce(Ljava/lang/Object;Ljava8/util/function/BinaryOperator;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava8/util/function/BinaryOperator<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract reduce(Ljava8/util/function/BinaryOperator;)Ljava8/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/BinaryOperator<",
            "TT;>;)",
            "Ljava8/util/Optional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract skip(J)Ljava8/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract sorted()Ljava8/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract sorted(Ljava/util/Comparator;)Ljava8/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract takeWhile(Ljava8/util/function/Predicate;)Ljava8/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Predicate<",
            "-TT;>;)",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract toArray()[Ljava/lang/Object;
.end method

.method public abstract toArray(Ljava8/util/function/IntFunction;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/IntFunction<",
            "[TA;>;)[TA;"
        }
    .end annotation
.end method
