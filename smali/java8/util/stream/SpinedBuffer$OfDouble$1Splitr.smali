.class Ljava8/util/stream/SpinedBuffer$OfDouble$1Splitr;
.super Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava8/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/SpinedBuffer$OfDouble;->spliterator()Ljava8/util/Spliterator$OfDouble;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/SpinedBuffer$OfPrimitive<",
        "Ljava/lang/Double;",
        "[D",
        "Ljava8/util/function/DoubleConsumer;",
        ">.BaseSpliterator<",
        "Ljava8/util/Spliterator$OfDouble;",
        ">;",
        "Ljava8/util/Spliterator$OfDouble;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava8/util/stream/SpinedBuffer$OfDouble;


# direct methods
.method constructor <init>(Ljava8/util/stream/SpinedBuffer$OfDouble;IIII)V
    .locals 0

    .line 1079
    iput-object p1, p0, Ljava8/util/stream/SpinedBuffer$OfDouble$1Splitr;->this$0:Ljava8/util/stream/SpinedBuffer$OfDouble;

    .line 1080
    invoke-direct/range {p0 .. p5}, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;-><init>(Ljava8/util/stream/SpinedBuffer$OfPrimitive;IIII)V

    return-void
.end method


# virtual methods
.method bridge synthetic arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1076
    check-cast p1, [D

    check-cast p3, Ljava8/util/function/DoubleConsumer;

    invoke-virtual {p0, p1, p2, p3}, Ljava8/util/stream/SpinedBuffer$OfDouble$1Splitr;->arrayForOne([DILjava8/util/function/DoubleConsumer;)V

    return-void
.end method

.method arrayForOne([DILjava8/util/function/DoubleConsumer;)V
    .locals 2

    .line 1093
    aget-wide v0, p1, p2

    invoke-interface {p3, v0, v1}, Ljava8/util/function/DoubleConsumer;->accept(D)V

    return-void
.end method

.method arraySpliterator([DII)Ljava8/util/Spliterator$OfDouble;
    .locals 0

    add-int/2addr p3, p2

    .line 1098
    invoke-static {p1, p2, p3}, Ljava8/util/J8Arrays;->spliterator([DII)Ljava8/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic arraySpliterator(Ljava/lang/Object;II)Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    .line 1076
    check-cast p1, [D

    invoke-virtual {p0, p1, p2, p3}, Ljava8/util/stream/SpinedBuffer$OfDouble$1Splitr;->arraySpliterator([DII)Ljava8/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 1123
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfDouble;->forEachRemaining(Ljava8/util/Spliterator$OfDouble;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava8/util/function/DoubleConsumer;)V
    .locals 0

    .line 1076
    invoke-super {p0, p1}, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->forEachRemaining(Ljava/lang/Object;)V

    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1113
    invoke-static {p0}, Ljava8/util/Spliterators;->getComparator(Ljava8/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 1103
    invoke-static {p0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 1108
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method bridge synthetic newSpliterator(IIII)Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    .line 1076
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava8/util/stream/SpinedBuffer$OfDouble$1Splitr;->newSpliterator(IIII)Ljava8/util/stream/SpinedBuffer$OfDouble$1Splitr;

    move-result-object p1

    return-object p1
.end method

.method newSpliterator(IIII)Ljava8/util/stream/SpinedBuffer$OfDouble$1Splitr;
    .locals 7

    .line 1087
    new-instance v6, Ljava8/util/stream/SpinedBuffer$OfDouble$1Splitr;

    iget-object v1, p0, Ljava8/util/stream/SpinedBuffer$OfDouble$1Splitr;->this$0:Ljava8/util/stream/SpinedBuffer$OfDouble;

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/SpinedBuffer$OfDouble$1Splitr;-><init>(Ljava8/util/stream/SpinedBuffer$OfDouble;IIII)V

    return-object v6
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 1118
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfDouble;->tryAdvance(Ljava8/util/Spliterator$OfDouble;Ljava8/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava8/util/function/DoubleConsumer;)Z
    .locals 0

    .line 1076
    invoke-super {p0, p1}, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfDouble;
    .locals 1

    .line 1076
    invoke-super {p0}, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Ljava8/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfDouble;

    return-object v0
.end method
