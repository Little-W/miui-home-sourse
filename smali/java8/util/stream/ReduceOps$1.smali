.class final Ljava8/util/stream/ReduceOps$1;
.super Ljava8/util/stream/ReduceOps$ReduceOp;
.source "ReduceOps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava8/util/stream/ReduceOps;->makeRef(Ljava/lang/Object;Ljava8/util/function/BiFunction;Ljava8/util/function/BinaryOperator;)Ljava8/util/stream/TerminalOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/ReduceOps$ReduceOp<",
        "TT;TU;",
        "Ljava8/util/stream/ReduceOps$1ReducingSink;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$combiner:Ljava8/util/function/BinaryOperator;

.field final synthetic val$reducer:Ljava8/util/function/BiFunction;

.field final synthetic val$seed:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava8/util/stream/StreamShape;Ljava8/util/function/BinaryOperator;Ljava8/util/function/BiFunction;Ljava/lang/Object;)V
    .locals 0

    .line 112
    iput-object p2, p0, Ljava8/util/stream/ReduceOps$1;->val$combiner:Ljava8/util/function/BinaryOperator;

    iput-object p3, p0, Ljava8/util/stream/ReduceOps$1;->val$reducer:Ljava8/util/function/BiFunction;

    iput-object p4, p0, Ljava8/util/stream/ReduceOps$1;->val$seed:Ljava/lang/Object;

    invoke-direct {p0, p1}, Ljava8/util/stream/ReduceOps$ReduceOp;-><init>(Ljava8/util/stream/StreamShape;)V

    return-void
.end method


# virtual methods
.method public makeSink()Ljava8/util/stream/ReduceOps$1ReducingSink;
    .locals 4

    .line 115
    new-instance v0, Ljava8/util/stream/ReduceOps$1ReducingSink;

    iget-object v1, p0, Ljava8/util/stream/ReduceOps$1;->val$seed:Ljava/lang/Object;

    iget-object v2, p0, Ljava8/util/stream/ReduceOps$1;->val$reducer:Ljava8/util/function/BiFunction;

    iget-object v3, p0, Ljava8/util/stream/ReduceOps$1;->val$combiner:Ljava8/util/function/BinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Ljava8/util/stream/ReduceOps$1ReducingSink;-><init>(Ljava/lang/Object;Ljava8/util/function/BiFunction;Ljava8/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public bridge synthetic makeSink()Ljava8/util/stream/ReduceOps$AccumulatingSink;
    .locals 1

    .line 112
    invoke-virtual {p0}, Ljava8/util/stream/ReduceOps$1;->makeSink()Ljava8/util/stream/ReduceOps$1ReducingSink;

    move-result-object v0

    return-object v0
.end method
