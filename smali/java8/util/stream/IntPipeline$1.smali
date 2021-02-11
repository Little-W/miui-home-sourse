.class Ljava8/util/stream/IntPipeline$1;
.super Ljava8/util/stream/ReferencePipeline$StatelessOp;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/IntPipeline;->mapToObj(Ljava8/util/function/IntFunction;I)Ljava8/util/stream/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/ReferencePipeline$StatelessOp<",
        "Ljava/lang/Integer;",
        "TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava8/util/stream/IntPipeline;

.field final synthetic val$mapper:Ljava8/util/function/IntFunction;


# direct methods
.method constructor <init>(Ljava8/util/stream/IntPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/IntFunction;)V
    .locals 0

    .line 169
    iput-object p1, p0, Ljava8/util/stream/IntPipeline$1;->this$0:Ljava8/util/stream/IntPipeline;

    iput-object p5, p0, Ljava8/util/stream/IntPipeline$1;->val$mapper:Ljava8/util/function/IntFunction;

    invoke-direct {p0, p2, p3, p4}, Ljava8/util/stream/ReferencePipeline$StatelessOp;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/stream/Sink<",
            "TU;>;)",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance p1, Ljava8/util/stream/IntPipeline$1$1;

    invoke-direct {p1, p0, p2}, Ljava8/util/stream/IntPipeline$1$1;-><init>(Ljava8/util/stream/IntPipeline$1;Ljava8/util/stream/Sink;)V

    return-object p1
.end method
