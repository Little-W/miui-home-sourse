.class public abstract Lio/branch/search/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Lio/branch/search/BranchBaseAppResult<",
        "+",
        "Lio/branch/search/BranchBaseLinkResult;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final requestId:Ljava/lang/String;

.field public final results:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/d;->requestId:Ljava/lang/String;

    iput-object p2, p0, Lio/branch/search/d;->results:Ljava/util/List;

    invoke-virtual {p0, p2}, Lio/branch/search/d;->setAppResultsAsParentsToTheirLinkResults(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TResult;>;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/d;->results:Ljava/util/List;

    return-object v0
.end method

.method public setAppResultsAsParentsToTheirLinkResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TResult;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/branch/search/BranchBaseAppResult;

    invoke-virtual {v0}, Lio/branch/search/BranchBaseAppResult;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method
