.class abstract Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;
.super Ljava/lang/Object;
.source "SpinedBuffer.java"

# interfaces
.implements Ljava8/util/Spliterator$OfPrimitive;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/SpinedBuffer$OfPrimitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseSpliterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T_SP",
        "LITR::Ljava8/util/Spliterator$OfPrimitive<",
        "TE;TT_CONS;TT_SP",
        "LITR;",
        ">;>",
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator$OfPrimitive<",
        "TE;TT_CONS;TT_SP",
        "LITR;",
        ">;"
    }
.end annotation


# instance fields
.field final lastSpineElementFence:I

.field final lastSpineIndex:I

.field splChunk:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_ARR;"
        }
    .end annotation
.end field

.field splElementIndex:I

.field splSpineIndex:I

.field final synthetic this$0:Ljava8/util/stream/SpinedBuffer$OfPrimitive;


# direct methods
.method constructor <init>(Ljava8/util/stream/SpinedBuffer$OfPrimitive;IIII)V
    .locals 0

    .line 635
    iput-object p1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava8/util/stream/SpinedBuffer$OfPrimitive;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 636
    iput p2, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .line 637
    iput p3, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    .line 638
    iput p4, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 639
    iput p5, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    .line 641
    iget-object p3, p1, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-nez p3, :cond_0

    iget-object p1, p1, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->curChunk:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object p1, p1, p2

    :goto_0
    iput-object p1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method abstract arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;ITT_CONS;)V"
        }
    .end annotation
.end method

.method abstract arraySpliterator(Ljava/lang/Object;II)Ljava8/util/Spliterator$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_ARR;II)TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public characteristics()I
    .locals 1

    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .locals 5

    .line 653
    iget v0, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    int-to-long v0, v0

    iget v2, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava8/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v0, v0, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget v1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    aget-wide v1, v0, v1

    iget v0, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-object v0, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava8/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v0, v0, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->priorElementCount:[J

    iget v3, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    aget-wide v3, v0, v3

    sub-long/2addr v1, v3

    iget v0, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    int-to-long v3, v0

    sub-long v0, v1, v3

    :goto_0
    return-wide v0
.end method

.method public forEachRemaining(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)V"
        }
    .end annotation

    .line 687
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    iget v0, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-lt v0, v1, :cond_0

    if-ne v0, v1, :cond_3

    iget v0, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget v1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    if-ge v0, v1, :cond_3

    .line 691
    :cond_0
    iget v0, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 693
    iget v1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    :goto_0
    iget v2, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ge v1, v2, :cond_1

    .line 694
    iget-object v2, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava8/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v2, v2, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 695
    iget-object v3, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava8/util/stream/SpinedBuffer$OfPrimitive;

    invoke-virtual {v3, v2}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v2, v0, v4, p1}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 699
    :cond_1
    iget v1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava8/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v1, v1, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v2, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    aget-object v1, v1, v2

    .line 700
    :goto_1
    iget-object v2, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava8/util/stream/SpinedBuffer$OfPrimitive;

    iget v3, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    invoke-virtual {v2, v1, v0, v3, p1}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->arrayForEach(Ljava/lang/Object;IILjava/lang/Object;)V

    .line 702
    iget p1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    iput p1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .line 703
    iget p1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    iput p1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    :cond_3
    return-void
.end method

.method abstract newSpliterator(IIII)Ljava8/util/Spliterator$OfPrimitive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public tryAdvance(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_CONS;)Z"
        }
    .end annotation

    .line 668
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    iget v0, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget v1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 672
    :cond_1
    :goto_0
    iget-object v0, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    iget v1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    invoke-virtual {p0, v0, v1, p1}, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->arrayForOne(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 674
    iget p1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget-object v0, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava8/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 675
    iput v2, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 676
    iget p1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    add-int/2addr p1, v1

    iput p1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    .line 677
    iget-object p1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava8/util/stream/SpinedBuffer$OfPrimitive;

    iget-object p1, p1, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget p1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v0, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-gt p1, v0, :cond_2

    .line 678
    iget-object p1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava8/util/stream/SpinedBuffer$OfPrimitive;

    iget-object p1, p1, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v0, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    aget-object p1, p1, v0

    iput-object p1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    :cond_2
    return v1
.end method

.method public trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 709
    iget v0, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    iget v1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 711
    iget v2, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    iget-object v3, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava8/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v4, v3, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v5, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    .line 712
    invoke-virtual {v3, v4}, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->arrayLength(Ljava/lang/Object;)I

    move-result v3

    .line 711
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->newSpliterator(IIII)Ljava8/util/Spliterator$OfPrimitive;

    move-result-object v0

    .line 714
    iget v1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineIndex:I

    iput v1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    const/4 v1, 0x0

    .line 715
    iput v1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    .line 716
    iget-object v1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->this$0:Ljava8/util/stream/SpinedBuffer$OfPrimitive;

    iget-object v1, v1, Ljava8/util/stream/SpinedBuffer$OfPrimitive;->spine:[Ljava/lang/Object;

    iget v2, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splSpineIndex:I

    aget-object v1, v1, v2

    iput-object v1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 720
    iget v0, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->lastSpineElementFence:I

    iget v1, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    return-object v2

    .line 724
    :cond_1
    iget-object v2, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splChunk:Ljava/lang/Object;

    invoke-virtual {p0, v2, v1, v0}, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->arraySpliterator(Ljava/lang/Object;II)Ljava8/util/Spliterator$OfPrimitive;

    move-result-object v1

    .line 725
    iget v2, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->splElementIndex:I

    return-object v1

    :cond_2
    return-object v2
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator;
    .locals 1

    .line 612
    invoke-virtual {p0}, Ljava8/util/stream/SpinedBuffer$OfPrimitive$BaseSpliterator;->trySplit()Ljava8/util/Spliterator$OfPrimitive;

    move-result-object v0

    return-object v0
.end method
