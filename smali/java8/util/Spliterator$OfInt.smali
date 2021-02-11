.class public interface abstract Ljava8/util/Spliterator$OfInt;
.super Ljava/lang/Object;
.source "Spliterator.java"

# interfaces
.implements Ljava8/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/Spliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator$OfPrimitive<",
        "Ljava/lang/Integer;",
        "Ljava8/util/function/IntConsumer;",
        "Ljava8/util/Spliterator$OfInt;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract forEachRemaining(Ljava8/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract forEachRemaining(Ljava8/util/function/IntConsumer;)V
.end method

.method public abstract tryAdvance(Ljava8/util/function/Consumer;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract tryAdvance(Ljava8/util/function/IntConsumer;)Z
.end method

.method public abstract trySplit()Ljava8/util/Spliterator$OfInt;
.end method
