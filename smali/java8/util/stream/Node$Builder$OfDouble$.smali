.class public Ljava8/util/stream/Node$Builder$OfDouble$;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava8/util/stream/Node$Builder;
.implements Ljava8/util/stream/Sink$OfDouble;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/stream/Node$Builder<",
        "Ljava/lang/Double;",
        ">;",
        "Ljava8/util/stream/Sink$OfDouble;"
    }
.end annotation


# direct methods
.method public static bridge synthetic build(Ljava8/util/stream/Node$Builder$OfDouble;)Ljava8/util/stream/Node;
    .locals 0

    .line 200
    invoke-interface {p0}, Ljava8/util/stream/Node$Builder$OfDouble;->build()Ljava8/util/stream/Node$OfDouble;

    move-result-object p0

    return-object p0
.end method
