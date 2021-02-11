.class public final Ljava8/util/Spliterators$OfLong;
.super Ljava/lang/Object;
.source "Spliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfLong"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 402
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forEachRemaining(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator$OfLong;",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 394
    instance-of v0, p1, Ljava8/util/function/LongConsumer;

    if-eqz v0, :cond_0

    .line 395
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfLong;->forEachRemaining(Ljava8/util/function/LongConsumer;)V

    goto :goto_0

    .line 398
    :cond_0
    invoke-static {p1}, Ljava8/util/Spliterators$OfLong;->toLongConsumer(Ljava8/util/function/Consumer;)Ljava8/util/function/LongConsumer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfLong;->forEachRemaining(Ljava8/util/function/LongConsumer;)V

    :goto_0
    return-void
.end method

.method public static forEachRemaining(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/LongConsumer;)V
    .locals 1

    .line 335
    :cond_0
    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfLong;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private static toLongConsumer(Ljava8/util/function/Consumer;)Ljava8/util/function/LongConsumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava8/util/function/LongConsumer;"
        }
    .end annotation

    .line 370
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava8/util/Spliterators$OfLong$$Lambda$1;->lambdaFactory$(Ljava8/util/function/Consumer;)Ljava8/util/function/LongConsumer;

    move-result-object p0

    return-object p0
.end method

.method public static tryAdvance(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator$OfLong;",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 361
    instance-of v0, p1, Ljava8/util/function/LongConsumer;

    if-eqz v0, :cond_0

    .line 362
    check-cast p1, Ljava8/util/function/LongConsumer;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfLong;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

    move-result p0

    return p0

    .line 365
    :cond_0
    invoke-static {p1}, Ljava8/util/Spliterators$OfLong;->toLongConsumer(Ljava8/util/function/Consumer;)Ljava8/util/function/LongConsumer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfLong;->tryAdvance(Ljava8/util/function/LongConsumer;)Z

    move-result p0

    return p0
.end method
