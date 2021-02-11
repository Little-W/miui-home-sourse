.class final Ljava8/util/stream/ReduceOps$11;
.super Ljava8/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReduceOps;->makeLong(Ljava8/util/function/LongBinaryOperator;)Ljava8/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/ReduceOps$ReduceOp<",
        "Ljava/lang/Long;",
        "Ljava8/util/OptionalLong;",
        "Ljava8/util/stream/ReduceOps$9ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$operator:Ljava8/util/function/LongBinaryOperator;


# direct methods
.method constructor <init>(Ljava8/util/stream/StreamShape;Ljava8/util/function/LongBinaryOperator;)V
    .locals 0

    .line 750
    iput-object p2, p0, Ljava8/util/stream/ReduceOps$11;->val$operator:Ljava8/util/function/LongBinaryOperator;

    invoke-direct {p0, p1}, Ljava8/util/stream/ReduceOps$ReduceOp;-><init>(Ljava8/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public makeSink()Ljava8/util/stream/ReduceOps$9ReducingSink;
    .locals 2

    .line 753
    new-instance v0, Ljava8/util/stream/ReduceOps$9ReducingSink;

    iget-object v1, p0, Ljava8/util/stream/ReduceOps$11;->val$operator:Ljava8/util/function/LongBinaryOperator;

    invoke-direct {v0, v1}, Ljava8/util/stream/ReduceOps$9ReducingSink;-><init>(Ljava8/util/function/LongBinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Ljava8/util/stream/ReduceOps$AccumulatingSink;
    .locals 1

    .line 750
    invoke-virtual {p0}, Ljava8/util/stream/ReduceOps$11;->makeSink()Ljava8/util/stream/ReduceOps$9ReducingSink;

    move-result-object v0

    return-object v0
.end method
