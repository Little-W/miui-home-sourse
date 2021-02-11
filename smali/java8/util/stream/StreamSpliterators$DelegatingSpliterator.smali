.class Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava8/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DelegatingSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;,
        Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;,
        Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator$OfInt;,
        Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator$OfPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Ljava8/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private s:Ljava8/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field private final supplier:Ljava8/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava8/util/function/Supplier<",
            "+TT_SP",
            "LITR;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava8/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Supplier<",
            "+TT_SP",
            "LITR;",
            ">;)V"
        }
    .end annotation

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 718
    iput-object p1, p0, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator;->supplier:Ljava8/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 756
    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava8/util/Spliterator;

    move-result-object v0

    invoke-interface {v0}, Ljava8/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 751
    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava8/util/Spliterator;

    move-result-object v0

    invoke-interface {v0}, Ljava8/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 746
    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava8/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava8/util/Spliterator;->forEachRemaining(Ljava8/util/function/Consumer;)V

    return-void
.end method

.method get()Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 722
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator;->s:Ljava8/util/Spliterator;

    if-nez v0, :cond_0

    .line 723
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator;->supplier:Ljava8/util/function/Supplier;

    invoke-interface {v0}, Ljava8/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava8/util/Spliterator;

    iput-object v0, p0, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator;->s:Ljava8/util/Spliterator;

    .line 725
    :cond_0
    iget-object v0, p0, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator;->s:Ljava8/util/Spliterator;

    return-object v0
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation

    .line 761
    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava8/util/Spliterator;

    move-result-object v0

    invoke-interface {v0}, Ljava8/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 766
    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava8/util/Spliterator;

    move-result-object v0

    invoke-interface {v0}, Ljava8/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 0

    .line 730
    invoke-static {p0, p1}, Ljava8/util/Spliterators;->hasCharacteristics(Ljava8/util/Spliterator;I)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava8/util/Spliterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 741
    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava8/util/Spliterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava8/util/Spliterator;->tryAdvance(Ljava8/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public trySplit()Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 736
    invoke-virtual {p0}, Ljava8/util/stream/StreamSpliterators$DelegatingSpliterator;->get()Ljava8/util/Spliterator;

    move-result-object v0

    invoke-interface {v0}, Ljava8/util/Spliterator;->trySplit()Ljava8/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
