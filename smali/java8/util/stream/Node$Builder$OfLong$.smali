.class public Ljava8/util/stream/Node$Builder$OfLong$;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava8/util/stream/Node$Builder;
.implements Ljava8/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/stream/Node$Builder<",
        "Ljava/lang/Long;",
        ">;",
        "Ljava8/util/stream/Sink$OfLong;"
    }
.end annotation


# direct methods
.method public static bridge synthetic build(Ljava8/util/stream/Node$Builder$OfLong;)Ljava8/util/stream/Node;
    .locals 0

    .line 192
    invoke-interface {p0}, Ljava8/util/stream/Node$Builder$OfLong;->build()Ljava8/util/stream/Node$OfLong;

    move-result-object p0

    return-object p0
.end method
