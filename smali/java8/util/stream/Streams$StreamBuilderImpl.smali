.class final Ljava8/util/stream/Streams$StreamBuilderImpl;
.super Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;
.source "Streams.java"

# interfaces
.implements Ljava8/util/stream/Stream$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StreamBuilderImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/Streams$AbstractStreamBuilderImpl<",
        "TT;",
        "Ljava8/util/Spliterator<",
        "TT;>;>;",
        "Ljava8/util/stream/Stream$Builder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field buffer:Ljava8/util/stream/SpinedBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/stream/SpinedBuffer<",
            "TT;>;"
        }
    .end annotation
.end field

.field first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 392
    invoke-direct {p0, v0}, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava8/util/stream/Streams$1;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 399
    invoke-direct {p0, v0}, Ljava8/util/stream/Streams$AbstractStreamBuilderImpl;-><init>(Ljava8/util/stream/Streams$1;)V

    .line 400
    iput-object p1, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    const/4 p1, -0x2

    .line 401
    iput p1, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->count:I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 408
    iget v0, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->count:I

    if-nez v0, :cond_0

    .line 409
    iput-object p1, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    .line 410
    iget p1, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->count:I

    goto :goto_0

    .line 412
    :cond_0
    iget v0, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->count:I

    if-lez v0, :cond_2

    .line 413
    iget-object v0, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer;

    if-nez v0, :cond_1

    .line 414
    new-instance v0, Ljava8/util/stream/SpinedBuffer;

    invoke-direct {v0}, Ljava8/util/stream/SpinedBuffer;-><init>()V

    iput-object v0, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer;

    .line 415
    iget-object v0, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer;

    iget-object v1, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava8/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    .line 416
    iget v0, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->count:I

    .line 419
    :cond_1
    iget-object v0, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer;

    invoke-virtual {v0, p1}, Ljava8/util/stream/SpinedBuffer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 422
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public add(Ljava/lang/Object;)Ljava8/util/stream/Stream$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava8/util/stream/Stream$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 428
    invoke-virtual {p0, p1}, Ljava8/util/stream/Streams$StreamBuilderImpl;->accept(Ljava/lang/Object;)V

    return-object p0
.end method

.method public build()Ljava8/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 434
    iget v0, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->count:I

    if-ltz v0, :cond_1

    .line 437
    iget v1, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->count:I

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->count:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 440
    invoke-static {p0, v2}, Ljava8/util/stream/StreamSupport;->stream(Ljava8/util/Spliterator;Z)Ljava8/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->buffer:Ljava8/util/stream/SpinedBuffer;

    invoke-virtual {v0}, Ljava8/util/stream/SpinedBuffer;->spliterator()Ljava8/util/Spliterator;

    move-result-object v0

    invoke-static {v0, v2}, Ljava8/util/stream/StreamSupport;->stream(Ljava8/util/Spliterator;Z)Ljava8/util/stream/Stream;

    move-result-object v0

    :goto_0
    return-object v0

    .line 443
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 466
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    iget v0, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 469
    iget-object v0, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 470
    iput p1, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->count:I

    :cond_0
    return-void
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 452
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    iget v0, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->count:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 455
    iget-object v0, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->first:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava8/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, -0x1

    .line 456
    iput p1, p0, Ljava8/util/stream/Streams$StreamBuilderImpl;->count:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
