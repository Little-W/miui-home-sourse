.class public Ljava8/util/Spliterator$OfPrimitive$;
.super Ljava/lang/Object;
.source "Spliterator.java"

# interfaces
.implements Ljava8/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_CONS:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava8/util/Spliterator$OfPrimitive<",
        "TT;TT_CONS;TT_SP",
        "LITR;",
        ">;>",
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public static bridge synthetic trySplit(Ljava8/util/Spliterator$OfPrimitive;)Ljava8/util/Spliterator;
    .locals 0

    .line 607
    invoke-interface {p0}, Ljava8/util/Spliterator$OfPrimitive;->trySplit()Ljava8/util/Spliterator$OfPrimitive;

    move-result-object p0

    return-object p0
.end method
