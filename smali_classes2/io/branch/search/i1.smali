.class public Lio/branch/search/i1;
.super Lio/branch/search/BranchLocalSearchResult;


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/branch/search/BranchLocalSearchResult;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lio/branch/search/BranchLocalSearchResult;->getResults()Ljava/util/List;

    move-result-object v0

    iget-object p1, p1, Lio/branch/search/d;->requestId:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lio/branch/search/BranchLocalSearchResult;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object p2, p0, Lio/branch/search/i1;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResults()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalAppResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0}, Lio/branch/search/BranchLocalSearchResult;->getResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/BranchLocalAppResult;

    new-instance v3, Lio/branch/search/h1;

    iget-object v4, p0, Lio/branch/search/i1;->b:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Lio/branch/search/h1;-><init>(Lio/branch/search/BranchLocalAppResult;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method
