.class final Ljava8/util/stream/Nodes$ToArrayTask$OfInt;
.super Ljava8/util/stream/Nodes$ToArrayTask$OfPrimitive;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes$ToArrayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Nodes$ToArrayTask$OfPrimitive<",
        "Ljava/lang/Integer;",
        "Ljava8/util/function/IntConsumer;",
        "[I",
        "Ljava8/util/Spliterator$OfInt;",
        "Ljava8/util/stream/Node$OfInt;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava8/util/stream/Node$OfInt;[II)V
    .locals 1

    const/4 v0, 0x0

    .line 3080
    invoke-direct {p0, p1, p2, p3, v0}, Ljava8/util/stream/Nodes$ToArrayTask$OfPrimitive;-><init>(Ljava8/util/stream/Node$OfPrimitive;Ljava/lang/Object;ILjava8/util/stream/Nodes$1;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava8/util/stream/Node$OfInt;[IILjava8/util/stream/Nodes$1;)V
    .locals 0

    .line 3077
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/Nodes$ToArrayTask$OfInt;-><init>(Ljava8/util/stream/Node$OfInt;[II)V

    return-void
.end method
