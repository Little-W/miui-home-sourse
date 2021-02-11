.class Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator$1;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;->initPartialTraversalState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;

.field final synthetic val$b:Ljava8/util/stream/SpinedBuffer$OfInt;


# direct methods
.method constructor <init>(Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;Ljava8/util/stream/SpinedBuffer$OfInt;)V
    .locals 0

    .line 356
    iput-object p1, p0, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator$1;->this$0:Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;

    iput-object p2, p0, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator$1;->val$b:Ljava8/util/stream/SpinedBuffer$OfInt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 369
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(I)V
    .locals 1

    .line 381
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator$1;->val$b:Ljava8/util/stream/SpinedBuffer$OfInt;

    invoke-virtual {v0, p1}, Ljava8/util/stream/SpinedBuffer$OfInt;->accept(I)V

    return-void
.end method

.method public accept(J)V
    .locals 0

    .line 373
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(Ljava/lang/Integer;)V
    .locals 0

    .line 377
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator$1;->accept(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 356
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator$1;->accept(Ljava/lang/Integer;)V

    return-void
.end method

.method public begin(J)V
    .locals 0

    return-void
.end method

.method public cancellationRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public end()V
    .locals 0

    return-void
.end method
