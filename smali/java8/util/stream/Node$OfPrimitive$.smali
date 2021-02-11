.class public Ljava8/util/stream/Node$OfPrimitive$;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava8/util/stream/Node;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_ARR:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava8/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;T_NODE::",
        "Ljava8/util/stream/Node$OfPrimitive<",
        "TT;TT_CONS;TT_ARR;TT_SP",
        "LITR;",
        "TT_NODE;>;>",
        "Ljava/lang/Object;",
        "Ljava8/util/stream/Node<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public static bridge synthetic getChild(Ljava8/util/stream/Node$OfPrimitive;I)Ljava8/util/stream/Node;
    .locals 0

    .line 206
    invoke-interface {p0, p1}, Ljava8/util/stream/Node$OfPrimitive;->getChild(I)Ljava8/util/stream/Node$OfPrimitive;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic spliterator(Ljava8/util/stream/Node$OfPrimitive;)Ljava8/util/Spliterator;
    .locals 0

    .line 206
    invoke-interface {p0}, Ljava8/util/stream/Node$OfPrimitive;->spliterator()Ljava8/util/Spliterator$OfPrimitive;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic truncate(Ljava8/util/stream/Node$OfPrimitive;JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node;
    .locals 0

    .line 206
    invoke-interface/range {p0 .. p5}, Ljava8/util/stream/Node$OfPrimitive;->truncate(JJLjava8/util/function/IntFunction;)Ljava8/util/stream/Node$OfPrimitive;

    move-result-object p0

    return-object p0
.end method
