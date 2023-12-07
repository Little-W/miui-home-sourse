.class public Lorg/ahocorasick/trie/Trie$TrieBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ahocorasick/trie/Trie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrieBuilder"
.end annotation


# instance fields
.field private trie:Lorg/ahocorasick/trie/Trie;

.field private trieConfig:Lorg/ahocorasick/trie/TrieConfig;


# direct methods
.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/ahocorasick/trie/TrieConfig;

    invoke-direct {v0}, Lorg/ahocorasick/trie/TrieConfig;-><init>()V

    iput-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->trieConfig:Lorg/ahocorasick/trie/TrieConfig;

    new-instance v0, Lorg/ahocorasick/trie/Trie;

    iget-object v1, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->trieConfig:Lorg/ahocorasick/trie/TrieConfig;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/ahocorasick/trie/Trie;-><init>(Lorg/ahocorasick/trie/TrieConfig;Lorg/ahocorasick/trie/Trie$1;)V

    iput-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->trie:Lorg/ahocorasick/trie/Trie;

    return-void
.end method

.method synthetic constructor <init>(Lorg/ahocorasick/trie/Trie$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/ahocorasick/trie/Trie$TrieBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public addKeyword(Ljava/lang/String;)Lorg/ahocorasick/trie/Trie$TrieBuilder;
    .locals 1

    iget-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->trie:Lorg/ahocorasick/trie/Trie;

    invoke-static {v0, p1}, Lorg/ahocorasick/trie/Trie;->access$200(Lorg/ahocorasick/trie/Trie;Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lorg/ahocorasick/trie/Trie;
    .locals 1

    iget-object v0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->trie:Lorg/ahocorasick/trie/Trie;

    invoke-static {v0}, Lorg/ahocorasick/trie/Trie;->access$400(Lorg/ahocorasick/trie/Trie;)V

    iget-object p0, p0, Lorg/ahocorasick/trie/Trie$TrieBuilder;->trie:Lorg/ahocorasick/trie/Trie;

    return-object p0
.end method
