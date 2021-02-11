.class Ljava8/util/stream/SpinedBuffer$OfInt$1Splitr;
.super Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava8/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/SpinedBuffer$OfInt;->spliterator()Ljava8/util/Spliterator$OfInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/SpinedBuffer$OfPrimitive<",
        "Ljava/lang/Integer;",
        "[I",
        "Ljava8/util/function/IntConsumer;",
        ">.BaseSpliterator<",
        "Ljava8/util/Spliterator$OfInt;",
        ">;",
        "Ljava8/util/Spliterator$OfInt;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava8/util/stream/SpinedBuffer$OfInt;


# direct methods
.method constructor <init>(Ljava8/util/stream/SpinedBuffer$OfInt;IIII)V
    .locals 0

    .line 805
    iput-object p1, p0, Ljava8/util/stream/SpinedBuffer$OfInt$1Splitr;->this$0:Ljava8/util/stream/SpinedBuffer$OfInt;

    .line 806
    invoke-direct/range {p0 .. p5}, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;-><init>(Ljava8/util/stream/SpinedBuffer$OfPrimitive;IIII)V

    return-void
.end method


# virtual methods
.method bridge synthetic arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 802
    check-cast p1, [I

    check-cast p3, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1, p2, p3}, Ljava8/util/stream/SpinedBuffer$OfInt$1Splitr;->arrayForOne([IILjava8/util/function/IntConsumer;)V

    return-void
.end method

.method arrayForOne([IILjava8/util/function/IntConsumer;)V
    .locals 0

    .line 819
    aget p1, p1, p2

    invoke-interface {p3, p1}, Ljava8/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method arraySpliterator([III)Ljava8/util/Spliterator$OfInt;
    .locals 0

    add-int/2addr p3, p2

    .line 824
    invoke-static {p1, p2, p3}, Ljava8/util/J8Arrays;->spliterator([III)Ljava8/util/Spliterator$OfInt;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic arraySpliterator(Ljava/lang/Object;II)Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    .line 802
    check-cast p1, [I

    invoke-virtual {p0, p1, p2, p3}, Ljava8/util/stream/SpinedBuffer$OfInt$1Splitr;->arraySpliterator([III)Ljava8/util/Spliterator$OfInt;

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
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 849
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfInt;->forEachRemaining(Ljava8/util/Spliterator$OfInt;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava8/util/function/IntConsumer;)V
    .locals 0

    .line 802
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
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 839
    invoke-static {p0}, Ljava8/util/Spliterators;->getComparator(Ljava8/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 829
    invoke-static {p0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 834
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method bridge synthetic newSpliterator(IIII)Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    .line 802
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava8/util/stream/SpinedBuffer$OfInt$1Splitr;->newSpliterator(IIII)Ljava8/util/stream/SpinedBuffer$OfInt$1Splitr;

    move-result-object p1

    return-object p1
.end method

.method newSpliterator(IIII)Ljava8/util/stream/SpinedBuffer$OfInt$1Splitr;
    .locals 7

    .line 813
    new-instance v6, Ljava8/util/stream/SpinedBuffer$OfInt$1Splitr;

    iget-object v1, p0, Ljava8/util/stream/SpinedBuffer$OfInt$1Splitr;->this$0:Ljava8/util/stream/SpinedBuffer$OfInt;

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/SpinedBuffer$OfInt$1Splitr;-><init>(Ljava8/util/stream/SpinedBuffer$OfInt;IIII)V

    return-object v6
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 844
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfInt;->tryAdvance(Ljava8/util/Spliterator$OfInt;Ljava8/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava8/util/function/IntConsumer;)Z
    .locals 0

    .line 802
    invoke-super {p0, p1}, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfInt;
    .locals 1

    .line 802
    invoke-super {p0}, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Ljava8/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfInt;

    return-object v0
.end method
