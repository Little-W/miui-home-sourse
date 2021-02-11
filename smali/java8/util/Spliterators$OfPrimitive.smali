.class public final Ljava8/util/Spliterators$OfPrimitive;
.super Ljava/lang/Object;
.source "Spliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OfPrimitive"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forEachRemaining(Ljava8/util/Spliterator$OfPrimitive;Ljava/lang/Object;)V
    .locals 1
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
            ">;>(",
            "Ljava8/util/Spliterator$OfPrimitive<",
            "TT;TT_CONS;TT_SP",
            "LITR;",
            ">;TT_CONS;)V"
        }
    .end annotation

    .line 213
    :cond_0
    invoke-interface {p0, p1}, Ljava8/util/Spliterator$OfPrimitive;->tryAdvance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method
