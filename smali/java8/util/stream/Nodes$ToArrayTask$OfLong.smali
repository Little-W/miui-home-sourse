.class final Ljava8/util/stream/Nodes$ToArrayTask$OfLong;
.super Ljava8/util/stream/Nodes$ToArrayTask$OfPrimitive;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes$ToArrayTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/Nodes$ToArrayTask$OfPrimitive<",
        "Ljava/lang/Long;",
        "Ljava8/util/function/LongConsumer;",
        "[J",
        "Ljava8/util/Spliterator$OfLong;",
        "Ljava8/util/stream/Node$OfLong;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava8/util/stream/Node$OfLong;[JI)V
    .locals 1

    const/4 v0, 0x0

    .line 3087
    invoke-direct {p0, p1, p2, p3, v0}, Ljava8/util/stream/Nodes$ToArrayTask$OfPrimitive;-><init>(Ljava8/util/stream/Node$OfPrimitive;Ljava/lang/Object;ILjava8/util/stream/Nodes$1;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava8/util/stream/Node$OfLong;[JILjava8/util/stream/Nodes$1;)V
    .locals 0

    .line 3084
    invoke-direct {p0, p1, p2, p3}, Ljava8/util/stream/Nodes$ToArrayTask$OfLong;-><init>(Ljava8/util/stream/Node$OfLong;[JI)V

    return-void
.end method
