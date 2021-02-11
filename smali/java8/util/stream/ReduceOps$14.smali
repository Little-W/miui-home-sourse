.class final Ljava8/util/stream/ReduceOps$14;
.super Ljava8/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReduceOps;->makeDouble(DLjava8/util/function/DoubleBinaryOperator;)Ljava8/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/ReduceOps$ReduceOp<",
        "Ljava/lang/Double;",
        "Ljava/lang/Double;",
        "Ljava8/util/stream/ReduceOps$11ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$identity:D

.field final synthetic val$operator:Ljava8/util/function/DoubleBinaryOperator;


# direct methods
.method constructor <init>(Ljava8/util/stream/StreamShape;Ljava8/util/function/DoubleBinaryOperator;D)V
    .locals 0

    .line 922
    iput-object p2, p0, Ljava8/util/stream/ReduceOps$14;->val$operator:Ljava8/util/function/DoubleBinaryOperator;

    iput-wide p3, p0, Ljava8/util/stream/ReduceOps$14;->val$identity:D

    invoke-direct {p0, p1}, Ljava8/util/stream/ReduceOps$ReduceOp;-><init>(Ljava8/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public makeSink()Ljava8/util/stream/ReduceOps$11ReducingSink;
    .locals 4

    .line 925
    new-instance v0, Ljava8/util/stream/ReduceOps$11ReducingSink;

    iget-wide v1, p0, Ljava8/util/stream/ReduceOps$14;->val$identity:D

    iget-object v3, p0, Ljava8/util/stream/ReduceOps$14;->val$operator:Ljava8/util/function/DoubleBinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Ljava8/util/stream/ReduceOps$11ReducingSink;-><init>(DLjava8/util/function/DoubleBinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Ljava8/util/stream/ReduceOps$AccumulatingSink;
    .locals 1

    .line 922
    invoke-virtual {p0}, Ljava8/util/stream/ReduceOps$14;->makeSink()Ljava8/util/stream/ReduceOps$11ReducingSink;

    move-result-object v0

    return-object v0
.end method
