.class public final Ljava8/util/Spliterators$OfDouble;
.super Ljava/lang/Object;
.source "Spliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfDouble"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forEachRemaining(Ljava8/util/Spliterator$OfDouble;Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator$OfDouble;",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 488
    instance-of v0, p1, Ljava8/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    .line 489
    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfDouble;->forEachRemaining(Ljava8/util/function/DoubleConsumer;)V

    goto :goto_0

    .line 492
    :cond_0
    invoke-static {p1}, Ljava8/util/Spliterators$OfDouble;->toDoubleConsumer(Ljava8/util/function/Consumer;)Ljava8/util/function/DoubleConsumer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfDouble;->forEachRemaining(Ljava8/util/function/DoubleConsumer;)V

    :goto_0
    return-void
.end method

.method public static forEachRemaining(Ljava8/util/Spliterator$OfDouble;Ljava8/util/function/DoubleConsumer;)V
    .locals 1

    .line 428
    :cond_0
    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfDouble;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private static toDoubleConsumer(Ljava8/util/function/Consumer;)Ljava8/util/function/DoubleConsumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava8/util/function/DoubleConsumer;"
        }
    .end annotation

    .line 463
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava8/util/Spliterators$OfDouble$$Lambda$1;->lambdaFactory$(Ljava8/util/function/Consumer;)Ljava8/util/function/DoubleConsumer;

    move-result-object p0

    return-object p0
.end method

.method public static tryAdvance(Ljava8/util/Spliterator$OfDouble;Ljava8/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator$OfDouble;",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 454
    instance-of v0, p1, Ljava8/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    .line 455
    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfDouble;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

    move-result p0

    return p0

    .line 458
    :cond_0
    invoke-static {p1}, Ljava8/util/Spliterators$OfDouble;->toDoubleConsumer(Ljava8/util/function/Consumer;)Ljava8/util/function/DoubleConsumer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfDouble;->tryAdvance(Ljava8/util/function/DoubleConsumer;)Z

    move-result p0

    return p0
.end method
