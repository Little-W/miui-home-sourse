.class final Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/promeg/pinyinhelper/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EmitComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/ahocorasick/trie/Emit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 92
    check-cast p1, Lorg/ahocorasick/trie/Emit;

    check-cast p2, Lorg/ahocorasick/trie/Emit;

    invoke-virtual {p0, p1, p2}, Lcom/github/promeg/pinyinhelper/Engine$EmitComparator;->compare(Lorg/ahocorasick/trie/Emit;Lorg/ahocorasick/trie/Emit;)I

    move-result p0

    return p0
.end method

.method public compare(Lorg/ahocorasick/trie/Emit;Lorg/ahocorasick/trie/Emit;)I
    .locals 4

    .line 96
    invoke-virtual {p1}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result p0

    invoke-virtual {p2}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne p0, v0, :cond_2

    .line 98
    invoke-virtual {p1}, Lorg/ahocorasick/trie/Emit;->size()I

    move-result p0

    invoke-virtual {p2}, Lorg/ahocorasick/trie/Emit;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/ahocorasick/trie/Emit;->size()I

    move-result p0

    invoke-virtual {p2}, Lorg/ahocorasick/trie/Emit;->size()I

    move-result p1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    .line 101
    :cond_2
    invoke-virtual {p1}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result p0

    invoke-virtual {p2}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result v0

    if-ge p0, v0, :cond_3

    move v1, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result p0

    invoke-virtual {p2}, Lorg/ahocorasick/trie/Emit;->getStart()I

    move-result p1

    if-ne p0, p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method
