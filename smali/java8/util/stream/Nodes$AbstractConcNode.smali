.class abstract Ljava8/util/stream/Nodes$AbstractConcNode;
.super Ljava/lang/Object;
.source "Nodes.java"

# interfaces
.implements Ljava8/util/stream/Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Nodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AbstractConcNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_NODE::",
        "Ljava8/util/stream/Node<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava8/util/stream/Node<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final left:Ljava8/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_NODE;"
        }
    .end annotation
.end field

.field protected final right:Ljava8/util/stream/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_NODE;"
        }
    .end annotation
.end field

.field private final size:J


# direct methods
.method constructor <init>(Ljava8/util/stream/Node;Ljava8/util/stream/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_NODE;TT_NODE;)V"
        }
    .end annotation

    .line 1191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1192
    iput-object p1, p0, Ljava8/util/stream/Nodes$AbstractConcNode;->left:Ljava8/util/stream/Node;

    .line 1193
    iput-object p2, p0, Ljava8/util/stream/Nodes$AbstractConcNode;->right:Ljava8/util/stream/Node;

    .line 1198
    invoke-interface {p1}, Ljava8/util/stream/Node;->count()J

    move-result-wide v0

    invoke-interface {p2}, Ljava8/util/stream/Node;->count()J

    move-result-wide p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Ljava8/util/stream/Nodes$AbstractConcNode;->size:J

    return-void
.end method


# virtual methods
.method public count()J
    .locals 2

    .line 1220
    iget-wide v0, p0, Ljava8/util/stream/Nodes$AbstractConcNode;->size:J

    return-wide v0
.end method

.method public getChild(I)Ljava8/util/stream/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT_NODE;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1213
    iget-object p1, p0, Ljava8/util/stream/Nodes$AbstractConcNode;->left:Ljava8/util/stream/Node;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1214
    iget-object p1, p0, Ljava8/util/stream/Nodes$AbstractConcNode;->right:Ljava8/util/stream/Node;

    return-object p1

    .line 1215
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getChildCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getShape()Ljava8/util/stream/StreamShape;
    .locals 1

    .line 1208
    invoke-static {}, Ljava8/util/stream/Nodes;->getShape()Ljava8/util/stream/StreamShape;

    move-result-object v0

    return-object v0
.end method
