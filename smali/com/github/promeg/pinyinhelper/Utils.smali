.class final Lcom/github/promeg/pinyinhelper/Utils;
.super Ljava/lang/Object;


# direct methods
.method static dictsToTrie(Ljava/util/List;)Lorg/ahocorasick/trie/Trie;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/promeg/pinyinhelper/PinyinDict;",
            ">;)",
            "Lorg/ahocorasick/trie/Trie;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    invoke-static {}, Lorg/ahocorasick/trie/Trie;->builder()Lorg/ahocorasick/trie/Trie$TrieBuilder;

    move-result-object v1

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/promeg/pinyinhelper/PinyinDict;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/github/promeg/pinyinhelper/PinyinDict;->words()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lcom/github/promeg/pinyinhelper/PinyinDict;->words()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    if-lez p0, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/ahocorasick/trie/Trie$TrieBuilder;->addKeyword(Ljava/lang/String;)Lorg/ahocorasick/trie/Trie$TrieBuilder;

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lorg/ahocorasick/trie/Trie$TrieBuilder;->build()Lorg/ahocorasick/trie/Trie;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
