.class abstract Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;
.super Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;
.source "WhileOps.java"

# interfaces
.implements Ljava8/util/Spliterator$OfDouble;
.implements Ljava8/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;,
        Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator<",
        "Ljava/lang/Double;",
        "Ljava8/util/Spliterator$OfDouble;",
        ">;",
        "Ljava8/util/Spliterator$OfDouble;",
        "Ljava8/util/function/DoubleConsumer;"
    }
.end annotation


# instance fields
.field final p:Ljava8/util/function/DoublePredicate;

.field t:D


# direct methods
.method constructor <init>(Ljava8/util/Spliterator$OfDouble;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;)V
    .locals 0

    .line 1099
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljava8/util/Spliterator;Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;)V

    .line 1100
    iget-object p1, p2, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->p:Ljava8/util/function/DoublePredicate;

    iput-object p1, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->p:Ljava8/util/function/DoublePredicate;

    return-void
.end method

.method constructor <init>(Ljava8/util/Spliterator$OfDouble;ZLjava8/util/function/DoublePredicate;)V
    .locals 0

    .line 1094
    invoke-direct {p0, p1, p2}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;-><init>(Ljava8/util/Spliterator;Z)V

    .line 1095
    iput-object p3, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->p:Ljava8/util/function/DoublePredicate;

    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 1

    .line 1105
    iget v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->count:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->count:I

    .line 1106
    iput-wide p1, p0, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->t:D

    return-void
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 1089
    check-cast p1, Ljava8/util/function/DoubleConsumer;

    invoke-virtual {p0, p1}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble;->forEachRemaining(Ljava8/util/function/DoubleConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 1126
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfDouble;->forEachRemaining(Ljava8/util/Spliterator$OfDouble;Ljava8/util/function/Consumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava8/util/function/DoubleConsumer;)V
    .locals 0

    .line 1116
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfDouble;->forEachRemaining(Ljava8/util/Spliterator$OfDouble;Ljava8/util/function/DoubleConsumer;)V

    return-void
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 1111
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 1121
    invoke-static {p0, p1}, Ljava8/util/Spliterators$OfDouble;->tryAdvance(Ljava8/util/Spliterator$OfDouble;Ljava8/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfDouble;
    .locals 1

    .line 1089
    invoke-super {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfDouble;

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava8/util/Spliterator$OfPrimitive;
    .locals 1

    .line 1089
    invoke-super {p0}, Ljava8/util/stream/WhileOps$UnorderedWhileSpliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator$OfPrimitive;

    return-object v0
.end method
