.class public Lio/branch/search/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/w3;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/t3;",
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

    iput-object v0, p0, Lio/branch/search/z0;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/branch/search/z0;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/t3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/z0;->b:Ljava/util/List;

    return-object v0
.end method

.method public a(Ljava/lang/String;JILjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lio/branch/search/z0;->b:Ljava/util/List;

    new-instance v8, Lio/branch/search/t3;

    int-to-long v5, p4

    move-object v1, v8

    move-object v2, p1

    move-wide v3, p2

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lio/branch/search/t3;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;JJ)V
    .locals 8

    iget-object v0, p0, Lio/branch/search/z0;->a:Ljava/util/List;

    new-instance v7, Lio/branch/search/w3;

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lio/branch/search/w3;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/w3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/z0;->a:Ljava/util/List;

    return-object v0
.end method
