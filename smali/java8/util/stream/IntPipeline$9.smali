.class Ljava8/util/stream/IntPipeline$9;
.super Ljava8/util/stream/IntPipeline$StatelessOp;
.source "IntPipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/IntPipeline;->filter(Ljava8/util/function/IntPredicate;)Ljava8/util/stream/IntStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/IntPipeline$StatelessOp<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava8/util/stream/IntPipeline;

.field final synthetic val$predicate:Ljava8/util/function/IntPredicate;


# direct methods
.method constructor <init>(Ljava8/util/stream/IntPipeline;Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;ILjava8/util/function/IntPredicate;)V
    .locals 0

    .line 337
    iput-object p1, p0, Ljava8/util/stream/IntPipeline$9;->this$0:Ljava8/util/stream/IntPipeline;

    iput-object p5, p0, Ljava8/util/stream/IntPipeline$9;->val$predicate:Ljava8/util/function/IntPredicate;

    invoke-direct {p0, p2, p3, p4}, Ljava8/util/stream/IntPipeline$StatelessOp;-><init>(Ljava8/util/stream/AbstractPipeline;Ljava8/util/stream/StreamShape;I)V

    return-void
.end method


# virtual methods
.method opWrapSink(ILjava8/util/stream/Sink;)Ljava8/util/stream/Sink;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava8/util/stream/Sink<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 340
    new-instance p1, Ljava8/util/stream/IntPipeline$9$1;

    invoke-direct {p1, p0, p2}, Ljava8/util/stream/IntPipeline$9$1;-><init>(Ljava8/util/stream/IntPipeline$9;Ljava8/util/stream/Sink;)V

    return-object p1
.end method
