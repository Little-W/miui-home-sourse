.class final Ljava8/util/DelegatingSpliterator;
.super Ljava/lang/Object;
.source "DelegatingSpliterator.java"

# interfaces
.implements Ljava8/util/Spliterator;


# annotations
.annotation build Lbuild/IgnoreJava8API;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava8/util/DelegatingSpliterator$ConsumerDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava8/util/Spliterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final spliter:Ljava/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Spliterator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Spliterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Spliterator<",
            "TT;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Ljava8/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Ljava8/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 52
    iget-object v0, p0, Ljava8/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 47
    iget-object v0, p0, Ljava8/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->estimateSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava8/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Ljava8/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    new-instance v1, Ljava8/util/DelegatingSpliterator$ConsumerDelegate;

    invoke-direct {v1, p1}, Ljava8/util/DelegatingSpliterator$ConsumerDelegate;-><init>(Ljava8/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    return-void
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

    .line 72
    iget-object v0, p0, Ljava8/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->getComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public getExactSizeIfKnown()J
    .locals 2

    .line 62
    iget-object v0, p0, Ljava8/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasCharacteristics(I)Z
    .locals 1

    .line 67
    iget-object v0, p0, Ljava8/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    invoke-interface {v0, p1}, Ljava/util/Spliterator;->hasCharacteristics(I)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava8/util/function/Consumer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava8/util/function/Consumer<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Ljava8/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    new-instance v1, Ljava8/util/DelegatingSpliterator$ConsumerDelegate;

    invoke-direct {v1, p1}, Ljava8/util/DelegatingSpliterator$ConsumerDelegate;-><init>(Ljava8/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/Spliterator;->tryAdvance(Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method

.method public trySplit()Ljava8/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Ljava8/util/DelegatingSpliterator;->spliter:Ljava/util/Spliterator;

    invoke-interface {v0}, Ljava/util/Spliterator;->trySplit()Ljava/util/Spliterator;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_0
    new-instance v1, Ljava8/util/DelegatingSpliterator;

    invoke-direct {v1, v0}, Ljava8/util/DelegatingSpliterator;-><init>(Ljava/util/Spliterator;)V

    return-object v1
.end method
