.class Ljava8/util/stream/Nodes$EmptyNode$OfRef;
.super Ljava8/util/stream/Nodes$EmptyNode;
.source "Nodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes$EmptyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava8/util/stream/Nodes$EmptyNode<",
        "TT;[TT;",
        "Ljava8/util/function/Consumer<",
        "-TT;>;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 897
    invoke-direct {p0}, Ljava8/util/stream/Nodes$EmptyNode;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava8/util/stream/Nodes$1;)V
    .locals 0

    .line 895
    invoke-direct {p0}, Ljava8/util/stream/Nodes$EmptyNode$OfRef;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic copyInto([Ljava/lang/Object;I)V
    .locals 0

    .line 895
    invoke-super {p0, p1, p2}, Ljava8/util/stream/Nodes$EmptyNode;->copyInto(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic forEach(Ljava8/util/function/Consumer;)V
    .locals 0

    .line 895
    invoke-super {p0, p1}, Ljava8/util/stream/Nodes$EmptyNode;->forEach(Ljava/lang/Object;)V

    return-void
.end method

.method public spliterator()Ljava8/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava8/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 902
    invoke-static {}, Ljava8/util/Spliterators;->emptySpliterator()Ljava8/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
