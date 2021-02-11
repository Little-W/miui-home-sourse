.class Ljava8/util/stream/DoublePipeline$5;
.super Ljava8/util/stream/DoublePipeline$StatelessOp;
.source "DoublePipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/DoublePipeline;->flatMap(Ljava8/util/function/DoubleFunction;)Ljava8/util/stream/DoubleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/DoublePipeline$StatelessOp<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava8/util/stream/DoublePipeline;

.field final synthetic val$mapper:Ljava8/util/function/DoubleFunction;


# direct methods
.method constructor <init>(Ljava8/util/stream/DoublePipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/DoubleFunction;)V
    .locals 0

    .line 257
    iput-object p1, p0, Ljava8/util/stream/DoublePipeline$5;->this$0:Ljava8/util/stream/DoublePipeline;

    iput-object p5, p0, Ljava8/util/stream/DoublePipeline$5;->val$mapper:Ljava8/util/function/DoubleFunction;

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
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 260
    new-instance p1, Ljava8/util/stream/DoublePipeline$5$1;

    invoke-direct {p1, p0, p2}, Ljava8/util/stream/DoublePipeline$5$1;-><init>(Ljava8/util/stream/DoublePipeline$5;Ljava8/util/stream/Sink;)V

    return-object p1
.end method
