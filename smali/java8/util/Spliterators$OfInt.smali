.class public final Ljava8/util/Spliterators$OfInt;
.super Ljava/lang/Object;
.source "Spliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfInt"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forEachRemaining(Ljava8/util/Spliterator$OfInt;Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator$OfInt;",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 301
    instance-of v0, p1, Ljava8/util/function/IntConsumer;

    if-eqz v0, :cond_0

    .line 302
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfInt;->forEachRemaining(Ljava8/util/function/IntConsumer;)V

    goto :goto_0

    .line 305
    :cond_0
    invoke-static {p1}, Ljava8/util/Spliterators$OfInt;->toIntConsumer(Ljava8/util/function/Consumer;)Ljava8/util/function/IntConsumer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfInt;->forEachRemaining(Ljava8/util/function/IntConsumer;)V

    :goto_0
    return-void
.end method

.method public static forEachRemaining(Ljava8/util/Spliterator$OfInt;Ljava8/util/function/IntConsumer;)V
    .locals 1

    .line 242
    :cond_0
    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfInt;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private static toIntConsumer(Ljava8/util/function/Consumer;)Ljava8/util/function/IntConsumer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava8/util/function/IntConsumer;"
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Ljava8/util/Spliterators$OfInt$$Lambda$1;->lambdaFactory$(Ljava8/util/function/Consumer;)Ljava8/util/function/IntConsumer;

    move-result-object p0

    return-object p0
.end method

.method public static tryAdvance(Ljava8/util/Spliterator$OfInt;Ljava8/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/Spliterator$OfInt;",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 268
    instance-of v0, p1, Ljava8/util/function/IntConsumer;

    if-eqz v0, :cond_0

    .line 269
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfInt;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

    move-result p0

    return p0

    .line 272
    :cond_0
    invoke-static {p1}, Ljava8/util/Spliterators$OfInt;->toIntConsumer(Ljava8/util/function/Consumer;)Ljava8/util/function/IntConsumer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfInt;->tryAdvance(Ljava8/util/function/IntConsumer;)Z

    move-result p0

    return p0
.end method
