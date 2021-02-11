.class final Ljava8/util/stream/Nodes$OfPrimitive;
.super Ljava/lang/Object;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfPrimitive"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asArray(Ljava8/util/stream/Node$OfPrimitive;Ljava8/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "T_CONS:",
            "Ljava/lang/Object;",
            "T_ARR:",
            "Ljava/lang/Object;",
            "T_NODE::",
            "Ljava8/util/stream/Node$OfPrimitive<",
            "TT;TT_CONS;TT_ARR;TT_SP",
            "LITR;",
            "TT_NODE;>;T_SP",
            "LITR::Ljava8/util/Spliterator$OfPrimitive<",
            "TT;TT_CONS;TT_SP",
            "LITR;",
            ">;>(",
            "Ljava8/util/stream/Node$OfPrimitive<",
            "TT;TT_CONS;TT_ARR;TT_SP",
            "LITR;",
            "TT_NODE;>;",
            "Ljava8/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 147
    invoke-interface {p0}, Ljava8/util/stream/Node$OfPrimitive;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 151
    invoke-interface {p0}, Ljava8/util/stream/Node$OfPrimitive;->count()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {p1, v0}, Ljava8/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 152
    invoke-interface {p0, p1, v0}, Ljava8/util/stream/Node$OfPrimitive;->copyInto([Ljava/lang/Object;I)V

    return-object p1

    .line 149
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Stream size exceeds max array size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static getChild()Ljava8/util/stream/Node$OfPrimitive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "T_CONS:",
            "Ljava/lang/Object;",
            "T_ARR:",
            "Ljava/lang/Object;",
            "T_NODE::",
            "Ljava8/util/stream/Node$OfPrimitive<",
            "TT;TT_CONS;TT_ARR;TT_SP",
            "LITR;",
            "TT_NODE;>;T_SP",
            "LITR::Ljava8/util/Spliterator$OfPrimitive<",
            "TT;TT_CONS;TT_SP",
            "LITR;",
            ">;>()TT_NODE;"
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method
