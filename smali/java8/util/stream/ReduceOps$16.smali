.class final Ljava8/util/stream/ReduceOps$16;
.super Ljava8/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReduceOps;->makeDouble(Ljava8/util/function/Supplier;Ljava8/util/function/ObjDoubleConsumer;Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/ReduceOps$ReduceOp<",
        "Ljava/lang/Double;",
        "TR;",
        "Ljava8/util/stream/ReduceOps$13ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$accumulator:Ljava8/util/function/ObjDoubleConsumer;

.field final synthetic val$combiner:Ljava8/util/function/BinaryOperator;

.field final synthetic val$supplier:Ljava8/util/function/Supplier;


# direct methods
.method constructor <init>(Ljava8/util/stream/StreamShape;Ljava8/util/function/BinaryOperator;Ljava8/util/function/ObjDoubleConsumer;Ljava8/util/function/Supplier;)V
    .locals 0

    .line 1063
    iput-object p2, p0, Ljava8/util/stream/ReduceOps$16;->val$combiner:Ljava8/util/function/BinaryOperator;

    iput-object p3, p0, Ljava8/util/stream/ReduceOps$16;->val$accumulator:Ljava8/util/function/ObjDoubleConsumer;

    iput-object p4, p0, Ljava8/util/stream/ReduceOps$16;->val$supplier:Ljava8/util/function/Supplier;

    invoke-direct {p0, p1}, Ljava8/util/stream/ReduceOps$ReduceOp;-><init>(Ljava8/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public makeSink()Ljava8/util/stream/ReduceOps$13ReducingSink;
    .locals 4

    .line 1066
    new-instance v0, Ljava8/util/stream/ReduceOps$13ReducingSink;

    iget-object v1, p0, Ljava8/util/stream/ReduceOps$16;->val$supplier:Ljava8/util/function/Supplier;

    iget-object v2, p0, Ljava8/util/stream/ReduceOps$16;->val$accumulator:Ljava8/util/function/ObjDoubleConsumer;

    iget-object v3, p0, Ljava8/util/stream/ReduceOps$16;->val$combiner:Ljava8/util/function/BinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Ljava8/util/stream/ReduceOps$13ReducingSink;-><init>(Ljava8/util/function/Supplier;Ljava8/util/function/ObjDoubleConsumer;Ljava8/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Ljava8/util/stream/ReduceOps$AccumulatingSink;
    .locals 1

    .line 1063
    invoke-virtual {p0}, Ljava8/util/stream/ReduceOps$16;->makeSink()Ljava8/util/stream/ReduceOps$13ReducingSink;

    move-result-object v0

    return-object v0
.end method
