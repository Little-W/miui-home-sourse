.class public Lorg/ahocorasick/interval/IntervalTree;
.super Ljava/lang/Object;


# instance fields
.field private rootNode:Lorg/ahocorasick/interval/IntervalNode;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ahocorasick/interval/IntervalTree;->rootNode:Lorg/ahocorasick/interval/IntervalNode;

    new-instance v0, Lorg/ahocorasick/interval/IntervalNode;

    invoke-direct {v0, p1}, Lorg/ahocorasick/interval/IntervalNode;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lorg/ahocorasick/interval/IntervalTree;->rootNode:Lorg/ahocorasick/interval/IntervalNode;

    return-void
.end method


# virtual methods
.method public findOverlaps(Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/ahocorasick/interval/Intervalable;",
            ")",
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/ahocorasick/interval/IntervalTree;->rootNode:Lorg/ahocorasick/interval/IntervalNode;

    invoke-virtual {p0, p1}, Lorg/ahocorasick/interval/IntervalNode;->findOverlaps(Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public removeOverlaps(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/ahocorasick/interval/Intervalable;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/ahocorasick/interval/IntervalableComparatorBySize;

    invoke-direct {v0}, Lorg/ahocorasick/interval/IntervalableComparatorBySize;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ahocorasick/interval/Intervalable;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lorg/ahocorasick/interval/IntervalTree;->findOverlaps(Lorg/ahocorasick/interval/Intervalable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/ahocorasick/interval/Intervalable;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance p0, Lorg/ahocorasick/interval/IntervalableComparatorByPosition;

    invoke-direct {p0}, Lorg/ahocorasick/interval/IntervalableComparatorByPosition;-><init>()V

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method
