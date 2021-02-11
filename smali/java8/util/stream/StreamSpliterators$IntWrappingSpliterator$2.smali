.class Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator$2;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;->forEachRemaining(Ljava8/util/function/IntConsumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;

.field final synthetic val$consumer:Ljava8/util/function/IntConsumer;


# direct methods
.method constructor <init>(Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;Ljava8/util/function/IntConsumer;)V
    .locals 0

    .line 413
    iput-object p1, p0, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator$2;->this$0:Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator;

    iput-object p2, p0, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator$2;->val$consumer:Ljava8/util/function/IntConsumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 0

    .line 426
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(I)V
    .locals 1

    .line 438
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator$2;->val$consumer:Ljava8/util/function/IntConsumer;

    invoke-interface {v0, p1}, Ljava8/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method public accept(J)V
    .locals 0

    .line 430
    invoke-static {}, Ljava8/util/stream/SinkDefaults;->reject()V

    return-void
.end method

.method public accept(Ljava/lang/Integer;)V
    .locals 0

    .line 434
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator$2;->accept(I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 413
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/StreamSpliterators$IntWrappingSpliterator$2;->accept(Ljava/lang/Integer;)V

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
