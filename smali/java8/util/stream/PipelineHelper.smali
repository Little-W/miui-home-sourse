.class abstract Ljava8/util/stream/PipelineHelper;
.super Ljava/lang/Object;
.source "PipelineHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P_OUT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract copyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/Sink<",
            "TP_IN;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)V"
        }
    .end annotation
.end method

.method abstract copyIntoWithCancel(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/Sink<",
            "TP_IN;>;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)Z"
        }
    .end annotation
.end method

.method abstract evaluate(Ljava8/util/Spliterator;ZLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava8/util/function/IntFunction<",
            "[TP_OUT;>;)",
            "Ljava8/util/stream/Node<",
            "TP_OUT;>;"
        }
    .end annotation
.end method

.method abstract exactOutputSizeIfKnown(Ljava8/util/Spliterator;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)J"
        }
    .end annotation
.end method

.method abstract getSourceShape()Ljava8/util/stream/StreamShape;
.end method

.method abstract getStreamAndOpFlags()I
.end method

.method abstract makeNodeBuilder(JLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava8/util/function/IntFunction<",
            "[TP_OUT;>;)",
            "Ljava8/util/stream/Node$Builder<",
            "TP_OUT;>;"
        }
    .end annotation
.end method

.method abstract wrapAndCopyInto(Ljava8/util/function/Consumer;Ljava8/util/Spliterator;)Ljava8/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "S::",
            "Ljava8/util/function/Consumer<",
            "TP_OUT;>;>(TS;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)TS;"
        }
    .end annotation
.end method

.method abstract wrapAndCopyInto(Ljava8/util/stream/Sink;Ljava8/util/Spliterator;)Ljava8/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            "S::",
            "Ljava8/util/stream/Sink<",
            "TP_OUT;>;>(TS;",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)TS;"
        }
    .end annotation
.end method

.method abstract wrapSink(Ljava8/util/function/Consumer;)Ljava8/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/function/Consumer<",
            "TP_OUT;>;)",
            "Ljava8/util/stream/Sink<",
            "TP_IN;>;"
        }
    .end annotation
.end method

.method abstract wrapSink(Ljava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/stream/Sink<",
            "TP_OUT;>;)",
            "Ljava8/util/stream/Sink<",
            "TP_IN;>;"
        }
    .end annotation
.end method

.method abstract wrapSpliterator(Ljava8/util/Spliterator;)Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava8/util/Spliterator<",
            "TP_IN;>;)",
            "Ljava8/util/Spliterator<",
            "TP_OUT;>;"
        }
    .end annotation
.end method
