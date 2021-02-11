.class final Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfInt;
.super Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators$ArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive<",
        "Ljava8/util/function/IntConsumer;",
        ">;",
        "Ljava8/util/function/IntConsumer;"
    }
.end annotation


# instance fields
.field final array:[I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 1960
    invoke-direct {p0}, Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;-><init>()V

    .line 1961
    new-array p1, p1, [I

    iput-object p1, p0, Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->array:[I

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 3

    .line 1966
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->array:[I

    iget v1, p0, Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->index:I

    aput p1, v0, v1

    return-void
.end method

.method public bridge synthetic forEach(Ljava/lang/Object;J)V
    .locals 0

    .line 1956
    check-cast p1, Ljava8/util/function/IntConsumer;

    invoke-virtual {p0, p1, p2, p3}, Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->forEach(Ljava8/util/function/IntConsumer;J)V

    return-void
.end method

.method public forEach(Ljava8/util/function/IntConsumer;J)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    int-to-long v1, v0

    cmp-long v1, v1, p2

    if-gez v1, :cond_0

    .line 1972
    iget-object v1, p0, Ljava8/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->array:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava8/util/function/IntConsumer;->accept(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
