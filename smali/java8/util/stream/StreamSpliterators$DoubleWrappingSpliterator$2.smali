.class Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$2;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;->forEachRemaining(Ljava8/util/function/DoubleConsumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

.field final synthetic val$consumer:Ljava8/util/function/DoubleConsumer;


# direct methods
.method constructor <init>(Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;Ljava8/util/function/DoubleConsumer;)V
    .locals 0

    .line 663
    iput-object p1, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$2;->this$0:Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

    iput-object p2, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$2;->val$consumer:Ljava8/util/function/DoubleConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1

    .line 684
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$2;->val$consumer:Ljava8/util/function/DoubleConsumer;

    invoke-interface {v0, p1, p2}, Ljava8/util/function/DoubleConsumer;->accept(D)V

    return-void
.end method

.method public accept(I)V
    .locals 0

    .line 676
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 0

    .line 680
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(Ljava/lang/Double;)V
    .locals 2

    .line 688
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$2;->accept(D)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 663
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$DoubleWrappingSpliterator$2;->accept(Ljava/lang/Double;)V

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
