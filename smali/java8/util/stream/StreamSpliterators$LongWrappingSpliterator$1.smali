.class Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator$1;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;->initPartialTraversalState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;

.field final synthetic val$b:Ljava8/util/stream/SpinedBuffer$OfLong;


# direct methods
.method constructor <init>(Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;Ljava8/util/stream/SpinedBuffer$OfLong;)V
    .locals 0

    .line 481
    iput-object p1, p0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator$1;->this$0:Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator;

    iput-object p2, p0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator$1;->val$b:Ljava8/util/stream/SpinedBuffer$OfLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 494
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(I)V
    .locals 0

    .line 498
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(J)V
    .locals 1

    .line 506
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator$1;->val$b:Ljava8/util/stream/SpinedBuffer$OfLong;

    invoke-virtual {v0, p1, p2}, Ljava8/util/stream/SpinedBuffer$OfLong;->accept(J)V

    return-void
.end method

.method public accept(Ljava/lang/Long;)V
    .locals 2

    .line 502
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator$1;->accept(J)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 481
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$LongWrappingSpliterator$1;->accept(Ljava/lang/Long;)V

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
