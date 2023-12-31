.class final Lcom/github/promeg/pinyinhelper/ForwardLongestSelector;
.super Ljava/lang/Object;
.source "ForwardLongestSelector.java"

# interfaces
.implements Lcom/github/promeg/pinyinhelper/SegmentationSelector;


# static fields
.field static final HIT_COMPARATOR:Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;

    invoke-direct {v0}, Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;-><init>()V

    sput-object v0, Lcom/github/promeg/pinyinhelper/ForwardLongestSelector;->HIT_COMPARATOR:Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(Ljava/util/Collection;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/ahocorasick/trie/Emit;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/ahocorasick/trie/Emit;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 28
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 30
    sget-object p1, Lcom/github/promeg/pinyinhelper/ForwardLongestSelector;->HIT_COMPARATOR:Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, -0x1

    .line 34
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 36
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/ahocorasick/trie/Emit;

    .line 37
    invoke-virtual {v2}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result v3

    if-le v3, p1, :cond_1

    invoke-virtual {v2}, Lorg/ahocorasick/trie/Emit;->getEnd()I

    move-result v3

    if-le v3, p1, :cond_1

    .line 38
    invoke-virtual {v2}, Lorg/ahocorasick/trie/Emit;->getEnd()I

    move-result p1

    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method
