.class public Lorg/ahocorasick/trie/handler/DefaultEmitHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/ahocorasick/trie/handler/EmitHandler;


# instance fields
.field private emits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/ahocorasick/trie/Emit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ahocorasick/trie/handler/DefaultEmitHandler;->emits:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public emit(Lorg/ahocorasick/trie/Emit;)V
    .locals 0

    iget-object p0, p0, Lorg/ahocorasick/trie/handler/DefaultEmitHandler;->emits:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getEmits()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/ahocorasick/trie/Emit;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/ahocorasick/trie/handler/DefaultEmitHandler;->emits:Ljava/util/List;

    return-object p0
.end method
