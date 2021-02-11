.class final Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;
.super Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/Spliterator$OfDouble;
.implements Ljava8/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive<",
        "Ljava/lang/Double;",
        "Ljava8/util/function/DoubleConsumer;",
        "Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;",
        "Ljava8/util/Spliterator$OfDouble;",
        ">;",
        "Ljava8/util/Spliterator$OfDouble;",
        "Ljava8/util/function/DoubleConsumer;"
    }
.end annotation


# instance fields
.field tmpValue:D


# direct methods
.method constructor <init>(Ljava8/util/Spliterator$OfDouble;JJ)V
    .locals 0

    .line 1577
    invoke-direct/range {p0 .. p5}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljava8/util/Spliterator$OfPrimitive;JJ)V

    return-void
.end method

.method constructor <init>(Ljava8/util/Spliterator$OfDouble;Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;)V
    .locals 0

    .line 1581
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;-><init>(Ljava8/util/Spliterator$OfPrimitive;Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;)V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 1586
    iput-wide p1, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;->tmpValue:D

    return-void
.end method

.method protected bridge synthetic acceptConsumed(Ljava/lang/Object;)V
    .locals 0

    .line 1570
    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;->acceptConsumed(Ljava8/util/function/DoubleConsumer;)V

    return-void
.end method

.method protected acceptConsumed(Ljava8/util/function/DoubleConsumer;)V
    .locals 2

    .line 1616
    iget-wide v0, p0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;->tmpValue:D

    invoke-interface {p1, v0, v1}, Ljava8/util/function/DoubleConsumer;->accept(D)V

    return-void
.end method

.method protected bufferCreate(I)Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;
    .locals 1

    .line 1621
    new-instance v0, Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;

    invoke-direct {v0, p1}, Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic bufferCreate(I)Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
    .locals 0

    .line 1570
    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;->bufferCreate(I)Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;

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

    .line 1611
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfDouble;->forEachRemaining(Ljava8/util/Spliterator$OfDouble;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava8/util/function/DoubleConsumer;)V
    .locals 0

    .line 1570
    invoke-super {p0, p1}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->forEachRemaining(Ljava/lang/Object;)V

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

    .line 1601
    invoke-static {p0}, Ljava8/util/Spliterators;->getComparator(Ljava8/util/Spliterator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 1591
    invoke-static {p0}, Ljava8/util/Spliterators;->getExactSizeIfKnown(Ljava8/util/Spliterator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 1596
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method protected makeSpliterator(Ljava8/util/Spliterator$OfDouble;)Ljava8/util/Spliterator$OfDouble;
    .locals 1

    .line 1626
    new-instance v0, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;

    invoke-direct {v0, p1, p0}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;-><init>(Ljava8/util/Spliterator$OfDouble;Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;)V

    return-object v0
.end method

.method protected bridge synthetic makeSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .locals 0

    .line 1570
    check-cast p1, Ljava8/util/Spliterator$OfDouble;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfDouble;->makeSpliterator(Ljava8/util/Spliterator$OfDouble;)Ljava8/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
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

    .line 1606
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfDouble;->tryAdvance(Ljava8/util/Spliterator$OfDouble;Ljava8/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic tryAdvance(Ljava8/util/function/DoubleConsumer;)Z
    .locals 0

    .line 1570
    invoke-super {p0, p1}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfDouble;
    .locals 1

    .line 1570
    invoke-super {p0}, Ljava8/util/stream/StreamSpliterators$UnorderedSliceSpliterator$OfPrimitive;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfDouble;

    return-object v0
.end method
