.class Ljava8/util/stream/LongPipeline$2;
.super Ljava8/util/stream/DoublePipeline$StatelessOp;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/LongPipeline;->asDoubleStream()Ljava8/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/DoublePipeline$StatelessOp<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava8/util/stream/LongPipeline;


# direct methods
.method constructor <init>(Ljava8/util/stream/LongPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V
    .locals 0

    .line 195
    iput-object p1, p0, Ljava8/util/stream/LongPipeline$2;->this$0:Ljava8/util/stream/LongPipeline;

    invoke-direct {p0, p2, p3, p4}, Ljava8/util/stream/DoublePipeline$StatelessOp;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 198
    new-instance p1, Ljava8/util/stream/LongPipeline$2$1;

    invoke-direct {p1, p0, p2}, Ljava8/util/stream/LongPipeline$2$1;-><init>(Ljava8/util/stream/LongPipeline$2;Ljava8/util/stream/Sink;)V

    return-object p1
.end method
