.class public Ljava8/util/stream/Sink$OfInt$;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava8/util/function/IntConsumer;
.implements Ljava8/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/function/IntConsumer;",
        "Ljava8/util/stream/Sink<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public static bridge synthetic accept(Ljava8/util/stream/Sink$OfInt;Ljava/lang/Object;)V
    .locals 0

    .line 181
    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p0, p1}, Ljava8/util/stream/Sink$OfInt;->accept(Ljava/lang/Integer;)V

    return-void
.end method
