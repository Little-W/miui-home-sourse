.class public Lio/branch/search/BranchZeroStateResult;
.super Lio/branch/search/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/branch/search/d<",
        "Lio/branch/search/BranchLocalAppResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalAppResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalAppResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p2, p1}, Lio/branch/search/d;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iput-object p1, p0, Lio/branch/search/BranchZeroStateResult;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalAppResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/BranchZeroStateResult;->a:Ljava/util/List;

    return-object v0
.end method
