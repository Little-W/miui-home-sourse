.class public Ljava8/util/stream/Sink$OfLong$;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava8/util/function/LongConsumer;
.implements Ljava8/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/function/LongConsumer;",
        "Ljava8/util/stream/Sink<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public static bridge synthetic accept(Ljava8/util/stream/Sink$OfLong;Ljava/lang/Object;)V
    .locals 0

    .line 194
    check-cast p1, Ljava/lang/Long;

    invoke-interface {p0, p1}, Ljava8/util/stream/Sink$OfLong;->accept(Ljava/lang/Long;)V

    return-void
.end method
