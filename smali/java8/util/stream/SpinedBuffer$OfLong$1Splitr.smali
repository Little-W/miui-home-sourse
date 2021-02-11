.class Ljava8/util/stream/SpinedBuffer$OfLong$1Splitr;
.super Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava8/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/SpinedBuffer$OfLong;->spliterator()Ljava8/util/Spliterator$OfLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Splitr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/SpinedBuffer$OfPrimitive<",
        "Ljava/lang/Long;",
        "[J",
        "Ljava8/util/function/LongConsumer;",
        ">.BaseSpliterator<",
        "Ljava8/util/Spliterator$OfLong;",
        ">;",
        "Ljava8/util/Spliterator$OfLong;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava8/util/stream/SpinedBuffer$OfLong;


# direct methods
.method constructor <init>(Ljava8/util/stream/SpinedBuffer$OfLong;IIII)V
    .locals 0

    .line 942
    iput-object p1, p0, Ljava8/util/stream/SpinedBuffer$OfLong$1Splitr;->this$0:Ljava8/util/stream/SpinedBuffer$OfLong;

    .line 943
    invoke-direct/range {p0 .. p5}, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;-><init>(Ljava8/util/stream/SpinedBuffer$OfPrimitive;IIII)V

    return-void
.end method


# virtual methods
.method bridge synthetic arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 939
    check-cast p1, [J

    check-cast p3, Ljava8/util/function/LongConsumer;

    invoke-virtual {p0, p1, p2, p3}, Ljava8/util/stream/SpinedBuffer$OfLong$1Splitr;->arrayForOne([JILjava8/util/function/LongConsumer;)V

    return-void
.end method

.method arrayForOne([JILjava8/util/function/LongConsumer;)V
    .locals 2

    .line 956
    aget-wide v0, p1, p2

    invoke-interface {p3, v0, v1}, Ljava8/util/function/LongConsumer;->accept(J)V

    return-void
.end method

.method arraySpliterator([JII)Ljava8/util/Spliterator$OfLong;
    .locals 0

    add-int/2addr p3, p2

    .line 961
    invoke-static {p1, p2, p3}, Ljava8/util/J8Arrays;->spliterator([JII)Ljava8/util/Spliterator$OfLong;

    move-result-object p1

    return-object p1
.end method

.method bridge synthetic arraySpliterator(Ljava/lang/Object;II)Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    .line 939
    check-cast p1, [J

    invoke-virtual {p0, p1, p2, p3}, Ljava8/util/stream/SpinedBuffer$OfLong$1Splitr;->arraySpliterator([JII)Ljava8/util/Spliterator$OfLong;

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
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 986
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfLong;->forEachRemaining(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava8/util/function/LongConsumer;)V
    .locals 0

    .line 939
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 976
    invoke-static {p0}, Ljava8/util/Spliterators;->getComparator(Ljava8/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 966
    invoke-static {p0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 971
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method bridge synthetic newSpliterator(IIII)Ljava8/util/Spliterator$OfPrimitive;
    .locals 0

    .line 939
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava8/util/stream/SpinedBuffer$OfLong$1Splitr;->newSpliterator(IIII)Ljava8/util/stream/SpinedBuffer$OfLong$1Splitr;

    move-result-object p1

    return-object p1
.end method

.method newSpliterator(IIII)Ljava8/util/stream/SpinedBuffer$OfLong$1Splitr;
    .locals 7

    .line 950
    new-instance v6, Ljava8/util/stream/SpinedBuffer$OfLong$1Splitr;

    iget-object v1, p0, Ljava8/util/stream/SpinedBuffer$OfLong$1Splitr;->this$0:Ljava8/util/stream/SpinedBuffer$OfLong;

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljava8/util/stream/SpinedBuffer$OfLong$1Splitr;-><init>(Ljava8/util/stream/SpinedBuffer$OfLong;IIII)V

    return-object v6
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 981
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfLong;->tryAdvance(Ljava8/util/Spliterator$OfLong;Ljava8/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava8/util/function/LongConsumer;)Z
    .locals 0

    .line 939
    invoke-super {p0, p1}, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfLong;
    .locals 1

    .line 939
    invoke-super {p0}, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Ljava8/util/Spliterator$OfPrimitive;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfLong;

    return-object v0
.end method
