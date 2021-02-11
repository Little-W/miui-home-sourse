.class Ljava8/util/stream/LongPipeline$6;
.super Ljava8/util/stream/LongPipeline$StatelessOp;
.source "LongPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/LongPipeline;->flatMap(Ljava8/util/function/LongFunction;)Ljava8/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/LongPipeline$StatelessOp<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava8/util/stream/LongPipeline;

.field final synthetic val$mapper:Ljava8/util/function/LongFunction;


# direct methods
.method constructor <init>(Ljava8/util/stream/LongPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/LongFunction;)V
    .locals 0

    .line 274
    iput-object p1, p0, Ljava8/util/stream/LongPipeline$6;->this$0:Ljava8/util/stream/LongPipeline;

    iput-object p5, p0, Ljava8/util/stream/LongPipeline$6;->val$mapper:Ljava8/util/function/LongFunction;

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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 277
    new-instance p1, Ljava8/util/stream/LongPipeline$6$1;

    invoke-direct {p1, p0, p2}, Ljava8/util/stream/LongPipeline$6$1;-><init>(Ljava8/util/stream/LongPipeline$6;Ljava8/util/stream/Sink;)V

    return-object p1
.end method
