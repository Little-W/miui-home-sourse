.class Ljava8/util/stream/ReferencePipeline$5;
.super Ljava8/util/stream/LongPipeline$StatelessOp;
.source "ReferencePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReferencePipeline;->mapToLong(Ljava8/util/function/ToLongFunction;)Ljava8/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/LongPipeline$StatelessOp<",
        "TP_OUT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava8/util/stream/ReferencePipeline;

.field final synthetic val$mapper:Ljava8/util/function/ToLongFunction;


# direct methods
.method constructor <init>(Ljava8/util/stream/ReferencePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/ToLongFunction;)V
    .locals 0

    .line 224
    iput-object p1, p0, Ljava8/util/stream/ReferencePipeline$5;->this$0:Ljava8/util/stream/ReferencePipeline;

    iput-object p5, p0, Ljava8/util/stream/ReferencePipeline$5;->val$mapper:Ljava8/util/function/ToLongFunction;

    invoke-direct {p0, p2, p3, p4}, Ljava8/util/stream/LongPipeline$StatelessOp;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava8/util/stream/Sink<",
            "TP_OUT;>;"
        }
    .end annotation

    .line 227
    new-instance p1, Ljava8/util/stream/ReferencePipeline$5$1;

    invoke-direct {p1, p0, p2}, Ljava8/util/stream/ReferencePipeline$5$1;-><init>(Ljava8/util/stream/ReferencePipeline$5;Ljava8/util/stream/Sink;)V

    return-object p1
.end method
