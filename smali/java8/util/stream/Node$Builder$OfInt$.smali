.class public Ljava8/util/stream/Node$Builder$OfInt$;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava8/util/stream/Node$Builder;
.implements Ljava8/util/stream/Sink$OfInt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/stream/Node$Builder<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava8/util/stream/Sink$OfInt;"
    }
.end annotation


# direct methods
.method public static bridge synthetic build(Ljava8/util/stream/Node$Builder$OfInt;)Ljava8/util/stream/Node;
    .locals 0

    .line 184
    invoke-interface {p0}, Ljava8/util/stream/Node$Builder$OfInt;->build()Ljava8/util/stream/Node$OfInt;

    move-result-object p0

    return-object p0
.end method
