.class public interface abstract Ljava8/util/stream/Collector;
.super Ljava/lang/Object;
.source "Collector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/Collector$Characteristics;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract accumulator()Ljava8/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/function/BiConsumer<",
            "TA;TT;>;"
        }
    .end annotation
.end method

.method public abstract characteristics()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava8/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end method

.method public abstract combiner()Ljava8/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/function/BinaryOperator<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract finisher()Ljava8/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/function/Function<",
            "TA;TR;>;"
        }
    .end annotation
.end method

.method public abstract supplier()Ljava8/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/function/Supplier<",
            "TA;>;"
        }
    .end annotation
.end method
