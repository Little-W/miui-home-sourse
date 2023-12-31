.class public abstract Lio/branch/search/z3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lio/branch/search/u3;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/u3;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/b4;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/z3$j;

    invoke-direct {v0, p0}, Lio/branch/search/z3$j;-><init>(Lio/branch/search/z3;)V

    const-string v1, "app_clicks"

    invoke-virtual {p1, v1, v0}, Lio/branch/search/u3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lio/branch/search/z3$a;

    invoke-direct {v2, p0}, Lio/branch/search/z3$a;-><init>(Lio/branch/search/z3;)V

    invoke-virtual {p1, v1, v2}, Lio/branch/search/u3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-static {v0, p0}, Lio/branch/search/h5;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public abstract a()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/b4;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lio/branch/search/b4;",
            ">;"
        }
    .end annotation
.end method

.method public a(Lio/branch/search/b4;)V
    .locals 1

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lio/branch/search/z3;->b(Lio/branch/search/b4;)V

    invoke-virtual {v0}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/KBranchRemoteConfiguration;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/branch/search/z3;->f(I)V

    return-void
.end method

.method public a(Lio/branch/search/c4;)V
    .locals 1

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lio/branch/search/z3;->b(Lio/branch/search/c4;)V

    invoke-virtual {v0}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/KBranchRemoteConfiguration;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/branch/search/z3;->h(I)V

    return-void
.end method

.method public abstract a(Lio/branch/search/f4;)V
.end method

.method public a(Lio/branch/search/f4;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/f4;",
            "Ljava/util/List<",
            "Lio/branch/search/d4;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lio/branch/search/l;->d()Lio/branch/search/l;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lio/branch/search/z3;->a(Lio/branch/search/f4;)V

    invoke-virtual {p0, p2}, Lio/branch/search/z3;->a(Ljava/util/List;)V

    invoke-virtual {v0}, Lio/branch/search/l;->g()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lio/branch/search/KBranchRemoteConfiguration;->c()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/branch/search/z3;->g(I)V

    return-void
.end method

.method public abstract a(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/d4;",
            ">;)V"
        }
    .end annotation
.end method

.method public b(Lio/branch/search/u3;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/u3;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/d4;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/z3$d;

    invoke-direct {v0, p0}, Lio/branch/search/z3$d;-><init>(Lio/branch/search/z3;)V

    const-string v1, "unified_entities"

    invoke-virtual {p1, v1, v0}, Lio/branch/search/u3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lio/branch/search/z3$e;

    invoke-direct {v2, p0}, Lio/branch/search/z3$e;-><init>(Lio/branch/search/z3;)V

    invoke-virtual {p1, v1, v2}, Lio/branch/search/u3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-static {v0, p0}, Lio/branch/search/h5;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public abstract b()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/d4;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lio/branch/search/d4;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Lio/branch/search/b4;)V
.end method

.method public abstract b(Lio/branch/search/c4;)V
.end method

.method public abstract b(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/e4;",
            ">;)V"
        }
    .end annotation
.end method

.method public c(Lio/branch/search/u3;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/u3;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/e4;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/z3$f;

    invoke-direct {v0, p0}, Lio/branch/search/z3$f;-><init>(Lio/branch/search/z3;)V

    const-string v1, "unified_impressions"

    invoke-virtual {p1, v1, v0}, Lio/branch/search/u3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lio/branch/search/z3$g;

    invoke-direct {v2, p0}, Lio/branch/search/z3$g;-><init>(Lio/branch/search/z3;)V

    invoke-virtual {p1, v1, v2}, Lio/branch/search/u3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-static {v0, p0}, Lio/branch/search/h5;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public abstract c()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/e4;",
            ">;"
        }
    .end annotation
.end method

.method public abstract c(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lio/branch/search/e4;",
            ">;"
        }
    .end annotation
.end method

.method public d(Lio/branch/search/u3;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/u3;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/f4;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/z3$b;

    invoke-direct {v0, p0}, Lio/branch/search/z3$b;-><init>(Lio/branch/search/z3;)V

    const-string v1, "unified_virtual_requests"

    invoke-virtual {p1, v1, v0}, Lio/branch/search/u3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lio/branch/search/z3$c;

    invoke-direct {v2, p0}, Lio/branch/search/z3$c;-><init>(Lio/branch/search/z3;)V

    invoke-virtual {p1, v1, v2}, Lio/branch/search/u3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-static {v0, p0}, Lio/branch/search/h5;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public abstract d()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/f4;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lio/branch/search/f4;",
            ">;"
        }
    .end annotation
.end method

.method public e(Lio/branch/search/u3;)Landroidx/lifecycle/LiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/u3;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/c4;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/z3$h;

    invoke-direct {v0, p0}, Lio/branch/search/z3$h;-><init>(Lio/branch/search/z3;)V

    const-string v1, "search_clicks"

    invoke-virtual {p1, v1, v0}, Lio/branch/search/u3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v2, Lio/branch/search/z3$i;

    invoke-direct {v2, p0}, Lio/branch/search/z3$i;-><init>(Lio/branch/search/z3;)V

    invoke-virtual {p1, v1, v2}, Lio/branch/search/u3;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    invoke-static {v0, p0}, Lio/branch/search/h5;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LiveData;)Landroidx/lifecycle/LiveData;

    move-result-object p0

    return-object p0
.end method

.method public abstract e()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/branch/search/c4;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lio/branch/search/c4;",
            ">;"
        }
    .end annotation
.end method

.method public abstract f(I)V
.end method

.method public abstract g(I)V
.end method

.method public abstract h(I)V
.end method
